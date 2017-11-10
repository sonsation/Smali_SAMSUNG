.class public Lcom/samsung/android/glview/GLViewGroup;
.super Lcom/samsung/android/glview/GLView;
.source "GLViewGroup.java"


# static fields
.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000


# instance fields
.field private mDepthSortNeeded:Z

.field protected mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewGroupFlags:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLViewGroup;->initViewGroup()V

    return-void
.end method

.method private initViewGroup()V
    .locals 1

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLViewGroup;->setDescendantFocusability(I)V

    return-void
.end method


# virtual methods
.method public addAccessibilityBaseViewNode(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAccessibilityChildViewNode(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setParentId(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/glview/GLView;->addAccessibilityChildViewNode(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public addView(ILcom/samsung/android/glview/GLView;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iput-object p0, p2, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p0, p1, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mSizeGiven:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->updateSize()V

    :cond_1
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public contains(FF)Z
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    iget-boolean v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mRotateDegree:I

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    new-array v4, v8, [F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    aput v8, v0, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v9

    add-float/2addr v8, v9

    div-float/2addr v8, v10

    aput v8, v0, v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLContext:Lcom/samsung/android/glview/GLContext;

    aget v9, v0, v6

    aget v10, v0, v7

    invoke-static {v8, v4, v9, v10}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRotateDegree()I

    move-result v9

    sub-int/2addr v8, v9

    aget v9, v0, v6

    aget v10, v0, v7

    invoke-static {p1, p2, v8, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v3

    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v2, v3, Landroid/graphics/PointF;->y:F

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v7

    goto :goto_0
.end method

.method public contains(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dumpViewHierarchy(I)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v3, "| "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Clip(Manual:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/glview/GLViewGroup;->mManualClip:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/glview/GLView;->dumpViewHierarchy(I)V

    goto :goto_2

    :cond_1
    const-string v3, "DUMP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Focusable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isFocusable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method public findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 18

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    invoke-super/range {p0 .. p2}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object v4, v10

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v7, v15, v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v15}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/glview/GLView;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/samsung/android/glview/GLView;->findNextFocusFromView(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v10

    if-eqz v10, :cond_3

    if-nez v4, :cond_4

    move-object v4, v10

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v11, v16, v17

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v12, v16, v17

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v5, v16, v17

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v16, v17

    sub-float v16, v7, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v16, v8, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v16, v7, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v16, v8, v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    cmpl-float v16, v11, v5

    if-ltz v16, :cond_3

    cmpg-float v16, v11, v7

    if-gtz v16, :cond_3

    cmpl-float v16, v9, v13

    if-ltz v16, :cond_3

    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_5

    move-object v4, v10

    goto/16 :goto_0

    :cond_5
    cmpg-float v16, v13, v3

    if-gtz v16, :cond_3

    move-object v4, v10

    goto/16 :goto_0

    :sswitch_1
    cmpg-float v16, v11, v5

    if-gtz v16, :cond_3

    cmpl-float v16, v11, v7

    if-ltz v16, :cond_3

    cmpl-float v16, v9, v13

    if-ltz v16, :cond_3

    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v16, v16, v17

    if-gtz v16, :cond_6

    move-object v4, v10

    goto/16 :goto_0

    :cond_6
    cmpg-float v16, v13, v3

    if-gtz v16, :cond_3

    move-object v4, v10

    goto/16 :goto_0

    :sswitch_2
    cmpl-float v16, v12, v6

    if-ltz v16, :cond_3

    cmpg-float v16, v12, v8

    if-gtz v16, :cond_3

    cmpg-float v16, v9, v13

    if-gtz v16, :cond_3

    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_7

    move-object v4, v10

    goto/16 :goto_0

    :cond_7
    cmpg-float v16, v9, v2

    if-gtz v16, :cond_3

    move-object v4, v10

    goto/16 :goto_0

    :sswitch_3
    cmpg-float v16, v12, v6

    if-gtz v16, :cond_3

    cmpl-float v16, v12, v8

    if-ltz v16, :cond_3

    cmpg-float v16, v9, v13

    if-gtz v16, :cond_3

    sub-float v16, v13, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v17, v9, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpl-float v16, v16, v17

    if-ltz v16, :cond_8

    move-object v4, v10

    goto/16 :goto_0

    :cond_8
    cmpg-float v16, v9, v2

    if-gtz v16, :cond_3

    move-object v4, v10

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;
    .locals 11

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    iget-boolean v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v8, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mRotateDegree:I

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    new-array v6, v8, [F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {p0, v8}, Lcom/samsung/android/glview/GLViewGroup;->getLeftTop(I)[F

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v1, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    aput v9, v1, v8

    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLContext:Lcom/samsung/android/glview/GLContext;

    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    invoke-static {v8, v6, v9, v10}, Lcom/samsung/android/glview/GLUtil;->getGLCoordinateFromScreenCoordinate(Lcom/samsung/android/glview/GLContext;[FFF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getOrientation()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mDefaultOrientation:I

    add-int/2addr v8, v9

    rem-int/lit8 v8, v8, 0x4

    neg-int v8, v8

    mul-int/lit8 v8, v8, 0x5a

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRotateDegree()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v1, v10

    invoke-static {p1, p2, v8, v9, v10}, Lcom/samsung/android/glview/GLUtil;->rotatePoint(FFIFF)Landroid/graphics/PointF;

    move-result-object v5

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLView;->findViewByCoordinate(FF)Lcom/samsung/android/glview/GLView;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v4, v7

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    move-object p0, v4

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->contains(FF)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public findViewById(I)Lcom/samsung/android/glview/GLView;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewById(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getObjectTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewByObjectTag(Ljava/lang/String;)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewByTag(I)Lcom/samsung/android/glview/GLView;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->findViewByTag(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mInScreen:Z

    if-nez v3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop()Lcom/samsung/android/glview/GLView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentLeft()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getCurrentTop()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    move-object v1, v2

    goto :goto_0
.end method

.method public findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;
    .locals 11

    const/4 v5, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v5

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBypassTouch()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    const/4 v5, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/glview/GLView;->findViewFromLeftMostTop(IFF)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_3

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v0, v8, v10

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v1, v8, v10

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v3, v8, v10

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float v4, v8, v10

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    cmpg-float v8, v1, v4

    if-gez v8, :cond_5

    move-object v5, v6

    goto :goto_0

    :cond_5
    invoke-static {v1, v4}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    cmpg-float v8, v0, v3

    if-gtz v8, :cond_3

    move-object v5, v6

    goto :goto_0

    :pswitch_1
    cmpl-float v8, v1, v4

    if-lez v8, :cond_6

    move-object v5, v6

    goto :goto_0

    :cond_6
    invoke-static {v1, v4}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    cmpl-float v8, v0, v3

    if-lez v8, :cond_3

    move-object v5, v6

    goto/16 :goto_0

    :pswitch_2
    cmpl-float v8, v0, v3

    if-lez v8, :cond_7

    move-object v5, v6

    goto/16 :goto_0

    :cond_7
    invoke-static {v0, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    cmpg-float v8, v0, v4

    if-gtz v8, :cond_3

    move-object v5, v6

    goto/16 :goto_0

    :pswitch_3
    cmpg-float v8, v0, v3

    if-gez v8, :cond_8

    move-object v5, v6

    goto/16 :goto_0

    :cond_8
    invoke-static {v0, v3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_3

    cmpl-float v8, v1, v4

    if-ltz v8, :cond_3

    move-object v5, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v0, v5

    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v9, v12

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float v4, v9, v12

    iget-object v9, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v8, p1, p2}, Lcom/samsung/android/glview/GLView;->findViewOnSameLine(Lcom/samsung/android/glview/GLView;I)Lcom/samsung/android/glview/GLView;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v10

    if-eqz v10, :cond_3

    if-nez v0, :cond_4

    move-object v0, v5

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v6, v10, v12

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v7, v10, v12

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v1, v10, v12

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getOriginalClipRect()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    div-float v2, v10, v12

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    cmpl-float v10, v6, v1

    if-lez v10, :cond_3

    cmpg-float v10, v6, v3

    if-gez v10, :cond_3

    move-object v0, v5

    goto :goto_0

    :sswitch_1
    cmpg-float v10, v6, v1

    if-gez v10, :cond_3

    cmpl-float v10, v6, v3

    if-lez v10, :cond_3

    move-object v0, v5

    goto :goto_0

    :sswitch_2
    cmpl-float v10, v7, v2

    if-lez v10, :cond_3

    cmpg-float v10, v7, v4

    if-gez v10, :cond_3

    move-object v0, v5

    goto :goto_0

    :sswitch_3
    cmpg-float v10, v7, v2

    if-gez v10, :cond_3

    cmpl-float v10, v7, v4

    if-lez v10, :cond_3

    move-object v0, v5

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x31 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_1
        0x52 -> :sswitch_3
        0x62 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDescendantFocusability()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v0, v1

    return v0
.end method

.method public getIndex(Lcom/samsung/android/glview/GLView;)I
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getLoaded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(I)Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public initSize()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v1, v4, v5

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSizeSpecified()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    :cond_3
    return-void
.end method

.method public isDepthSorted()Z
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getLayoutZ()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    move-object v2, v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public onAlphaUpdated()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDepthUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onDepthUpdated()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    return-void
.end method

.method protected onDraw()V
    .locals 5

    iget-boolean v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->sortViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clip()V

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->clearClip()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onHoverIndicatorColorChanged()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onHoverIndicatorColorChanged()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onHoverIndicatorColorChanged()V

    return-void
.end method

.method public onLayoutUpdated()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onOrientationChanged(I)V

    return-void
.end method

.method protected onOutOfScreen()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onOutOfScreen()V

    return-void
.end method

.method public onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    const/4 v4, 0x1

    move v2, v1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    move v3, v5

    :goto_1
    if-eq v3, v2, :cond_0

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_2

    :cond_0
    const/4 v7, 0x0

    :goto_2
    return v7

    :cond_1
    add-int/lit8 v5, v1, -0x1

    const/4 v4, -0x1

    const/4 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isVisible()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->isFocusable()Z

    move-result v7

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    add-int/2addr v3, v4

    goto :goto_1
.end method

.method public onReset()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    return-void
.end method

.method public removeView(Lcom/samsung/android/glview/GLView;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->removeView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    goto :goto_0
.end method

.method public requestFocus(ILcom/samsung/android/glview/GLView;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getDescendantFocusability()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->onRequestFocusInDescendants(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->requestFocus(ILcom/samsung/android/glview/GLView;)Z

    move-result v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDescendantFocusability(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    iget v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    const/high16 v1, 0x60000

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLViewGroup;->mViewGroupFlags:I

    return-void

    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getRight()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getRight()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getBottom()F

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getBottom()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_4
    return-void
.end method

.method public setShaderParameter(F)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderParameter(F)V

    return-void
.end method

.method public setShaderProgram(I)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderProgram(I)V

    return-void
.end method

.method public setShaderStep(F)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setShaderStep(F)V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method protected sortViews()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->isDepthSorted()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/samsung/android/glview/GLViewGroup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/glview/GLViewGroup$1;-><init>(Lcom/samsung/android/glview/GLViewGroup;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/glview/GLViewGroup;->mDepthSortNeeded:Z

    goto :goto_0
.end method

.method public updateLayout(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    iget-object v1, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->updateLayout(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateSize()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/glview/GLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/glview/GLView;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getLeft()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v5

    add-float v1, v4, v5

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getTop()F

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    add-float v0, v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLeft()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->getTop()F

    move-result v4

    sub-float v4, v0, v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->updateSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLViewGroup;->refreshClipRect()V

    return-void
.end method
