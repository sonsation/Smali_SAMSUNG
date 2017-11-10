.class public Lcom/samsung/android/glview/GLGridList;
.super Lcom/samsung/android/glview/GLAbsList;
.source "GLGridList.java"


# static fields
.field public static final AUTO_FIT:I = -0x1


# instance fields
.field private mColumnWidth:F

.field private mDefaultNumColumns:I

.field private mHorizontalSpacing:F

.field private mItemCount:I

.field private mLeftPadding:F

.field private mNeedToChangeLeftPadding:Z

.field private mNeedToChangeTopPadding:Z

.field private mNumColumns:I

.field private mTopPadding:F

.field private mVerticalSpacing:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFFFI)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    iput p11, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput p11, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    iput p10, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFFFI)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLAbsList;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput v1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput p6, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iput p7, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    iput p8, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput p9, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    goto :goto_0
.end method

.method private updateContentArea(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaHeight()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v0

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-float v2, p1, v0

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_0

    :cond_2
    add-float v2, p1, v1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto :goto_0
.end method

.method private updateListPadding()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeLeftPadding:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLGridList;->mNeedToChangeTopPadding:Z

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public getNumColumns()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    return v0
.end method

.method public declared-synchronized refreshList()V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLAbsList;->refreshList()V

    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v7

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    :goto_0
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v7, :cond_0

    const/4 v7, 0x1

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/glview/GLView;

    rem-int v0, v4, v2

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    sub-int v9, v2, v0

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-float v1, v8, v9

    :goto_2
    div-int v5, v4, v2

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v3, v8, v9

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v3, v8}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FFZ)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v7}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    if-ge v7, v8, :cond_2

    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_2
    :try_start_1
    iget v7, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput v7, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v0

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-float v1, v8, v9

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/glview/GLContext;->setDirty(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    .locals 12

    const/4 v11, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v8}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->clear()V

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLGridList;->setScrollOrientation(I)V

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getContentAreaWidth()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    div-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    :goto_1
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-gtz v8, :cond_2

    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/glview/GLGridList;->updateListPadding()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v6, 0x0

    :goto_2
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v6, v8, :cond_d

    iget v1, p0, Lcom/samsung/android/glview/GLGridList;->mLeftPadding:F

    add-int v8, v6, v2

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v6

    :goto_3
    if-ge v4, v0, :cond_c

    iget-object v8, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getView(ILcom/samsung/android/glview/GLView;)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    if-nez v7, :cond_5

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    if-ge v8, v9, :cond_4

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_1

    :cond_4
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    goto :goto_1

    :cond_5
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v8, v11, :cond_b

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_6

    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumY:F

    :cond_6
    div-int v5, v4, v2

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    add-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/samsung/android/glview/GLGridList;->mTopPadding:F

    add-float v3, v8, v9

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_7

    rem-int v8, v4, v2

    if-nez v8, :cond_7

    add-int/lit8 v8, v2, -0x1

    int-to-float v8, v8

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    :cond_7
    invoke-virtual {v7, v1, v3}, Lcom/samsung/android/glview/GLView;->moveLayoutAbsolute(FF)V

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    sub-float/2addr v1, v8

    :goto_5
    add-int/lit8 v8, v0, -0x1

    if-ge v4, v8, :cond_8

    invoke-static {}, Lcom/samsung/android/glview/GLUtil;->isLocaleRTL()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    sub-float/2addr v1, v8

    :cond_8
    :goto_6
    invoke-virtual {v7, p0}, Lcom/samsung/android/glview/GLView;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    invoke-virtual {p0, v7}, Lcom/samsung/android/glview/GLGridList;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v8

    add-float/2addr v1, v8

    goto :goto_5

    :cond_a
    iget v8, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    add-float/2addr v1, v8

    goto :goto_6

    :cond_b
    invoke-virtual {v7}, Lcom/samsung/android/glview/GLView;->getScrollHint()Z

    move-result v8

    if-eqz v8, :cond_8

    neg-float v8, v3

    iput v8, p0, Lcom/samsung/android/glview/GLGridList;->mScrollSumX:F

    goto :goto_6

    :cond_c
    add-int/2addr v6, v2

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0, v3}, Lcom/samsung/android/glview/GLGridList;->updateContentArea(F)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setAdapter(Lcom/samsung/android/glview/GLAbsList$Adapter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setColumnWidth(FZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mColumnWidth:F

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setHeight(F)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    return-void
.end method

.method public setNumColumns(IZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mAdapter:Lcom/samsung/android/glview/GLAbsList$Adapter;

    invoke-interface {v0}, Lcom/samsung/android/glview/GLAbsList$Adapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    if-ge v0, p1, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mNumColumns:I

    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mDefaultNumColumns:I

    goto :goto_1
.end method

.method public setSize(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLAbsList;->setSize(FF)V

    return-void
.end method

.method public declared-synchronized setSize(FFZ)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLGridList;->setSize(FF)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLGridList;->setBouncing(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setVisibleArea()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLGridList;->mScrollBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(FFZ)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLGridList;->mHorizontalSpacing:F

    iput p2, p0, Lcom/samsung/android/glview/GLGridList;->mVerticalSpacing:F

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    :cond_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLAbsList;->setWidth(F)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->refreshList()V

    return-void
.end method

.method public declared-synchronized updateStartOffset(FI)V
    .locals 8

    const/4 v2, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    cmpg-float v3, p1, v5

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mScrollOrientation:I

    if-ne v3, v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_3

    :goto_1
    if-nez v1, :cond_6

    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v1, v2

    goto :goto_1

    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutY()F

    move-result v3

    sub-float p1, v2, v3

    cmpg-float v2, p1, v5

    if-gez v2, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float p1, v2, v3

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->isScrollable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->setScrollBarLayout()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_5

    :cond_7
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentHeight:F

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_a

    :goto_6
    if-nez v1, :cond_d

    packed-switch p2, :pswitch_data_1

    :cond_9
    :goto_7
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_8

    :cond_a
    move v1, v2

    goto :goto_6

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v6

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getLayoutX()F

    move-result v3

    sub-float p1, v2, v3

    cmpg-float v2, p1, v5

    if-gez v2, :cond_b

    const/4 p1, 0x0

    goto :goto_7

    :cond_b
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float p1, v2, v3

    goto :goto_7

    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLGridList;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float p1, v2

    goto :goto_7

    :cond_c
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    goto/16 :goto_4

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/glview/GLGridList;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    goto :goto_9

    :cond_e
    iget v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/glview/GLGridList;->mContentWidth:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
