.class public abstract Lcom/sec/android/app/camera/widget/gl/DragDropBox;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "DragDropBox.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;,
        Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragDropBox"


# instance fields
.field protected lastDragCoord:[F

.field private mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

.field protected mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

.field private mDraggable:Z

.field private mDraggingItemViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

.field private mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

.field private mDroppable:Z

.field private mIsAreaLineEnabled:Z

.field protected mItem:Lcom/samsung/android/glview/GLView;

.field private mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

.field private mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

.field private mRelocating:Z

.field protected mView:Lcom/samsung/android/glview/GLView;

.field protected mViewToDrag:Lcom/samsung/android/glview/GLView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mIsAreaLineEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mRelocating:Z

    iput-object p2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggingItemViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object p3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setNext(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mIsAreaLineEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLRectangle;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    return-object v0
.end method

.method static synthetic access$201(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLView$DragListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)Lcom/samsung/android/glview/GLView$DragListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mRelocating:Z

    return p1
.end method

.method private findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    move-object p1, v5

    :goto_0
    return-object p1

    :cond_0
    instance-of v6, p1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v6, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/glview/GLView;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_3

    check-cast p1, Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    goto :goto_0

    :cond_1
    instance-of v6, p1, Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v6, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    :try_start_0
    invoke-virtual {v4, v1}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v6

    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_2

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "DragDropBox"

    const-string v7, "This view already removed!!!"

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v5

    goto :goto_0
.end method

.method private relocateItem(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mInScreen:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDroppable(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutX()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutX()F

    move-result v4

    sub-float v1, v3, v4

    invoke-virtual {p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutY()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutY()F

    move-result v4

    sub-float v2, v3, v4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v1, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v5

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2}, Lcom/samsung/android/glview/GLView;->startAnimation()V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p2, v7}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    iput-boolean v8, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mRelocating:Z

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDroppable(Z)V

    new-instance v3, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$3;-><init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    invoke-virtual {p2, v3}, Lcom/samsung/android/glview/GLView;->setAnimationEventListener(Lcom/samsung/android/glview/GLView$AnimationEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addToFirst(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addToFirst(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftRight()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public addToLast(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addToLast(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftLeft()Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public addView(Lcom/samsung/android/glview/GLView;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mItem:Lcom/samsung/android/glview/GLView;

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p1, p0}, Lcom/samsung/android/glview/GLView;->setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(ILcom/samsung/android/glview/GLView;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(ILcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method protected cancelDrag()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addToLast(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDroppable(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mItem:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->resetTranslate()V

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDraggable(Z)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggingItemViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(FF)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAreaLine(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mIsAreaLineEnabled:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    :cond_0
    return-void
.end method

.method public getDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    return v0
.end method

.method public getDroppable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    return v0
.end method

.method public getItem()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mItem:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public getLayoutX()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLayoutX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLayoutX()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLayoutX()F

    move-result v0

    goto :goto_0
.end method

.method public getLayoutY()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLayoutY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mParent:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->getLayoutY()F

    move-result v1

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->getLayoutY()F

    move-result v0

    goto :goto_0
.end method

.method public getNext()Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    return-object v0
.end method

.method public getPrevious()Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    return-object v0
.end method

.method public getViewToDrag()Lcom/samsung/android/glview/GLView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    return-object v0
.end method

.method public isAreaLineEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mIsAreaLineEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    instance-of v0, v0, Lcom/sec/android/app/camera/widget/gl/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/Item;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveEmptyToLast(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/DragDropBox;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftLeft()Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->moveEmptyToLast(Lcom/samsung/android/glview/GLView;)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mItem:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public onDrag(Lcom/samsung/android/glview/GLView;FFFF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v7, v0, v3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v8, v0, v4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mapPointReverse([FFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v1, v1, v3

    sub-float/2addr v1, v7

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    aget v2, v2, v4

    sub-float/2addr v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translate(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getRootView()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->findDragDropBox(Lcom/samsung/android/glview/GLView;FF)Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    iput-object v6, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/glview/GLView$DragListener;->onDrag(Lcom/samsung/android/glview/GLView;FFFF)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragItemInDragDropBox(Lcom/samsung/android/glview/GLView;FFFF)V

    :cond_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropbox:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onTouchOver(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/samsung/android/glview/GLView;FF)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggingItemViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$2;-><init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;FFLcom/samsung/android/glview/GLView;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDragStart(Lcom/samsung/android/glview/GLView;FF)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x3f99999a    # 1.2f

    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->lastDragCoord:[F

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mapPointReverse([FFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutX()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getTranslateX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getLayoutY()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getTranslateY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLView;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggingItemViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLView;->setClipping(Z)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setClipping(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mViewToDrag:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLView;->scale(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/glview/GLView$DragListener;->onDragStart(Lcom/samsung/android/glview/GLView;FF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;->onDragStartItemInDragDropBox(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method protected onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->onDrop(Lcom/samsung/android/glview/GLView;Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;->onDrop(Lcom/samsung/android/glview/GLView;)V

    goto :goto_0
.end method

.method public onTouchOver(Lcom/samsung/android/glview/GLView;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mRelocating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftLeft()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftRight()Z

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    goto :goto_0
.end method

.method public removeView()Lcom/samsung/android/glview/GLView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    return-object v0
.end method

.method public setDragDropBoxEventListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragDropBoxEventListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DragDropBoxEventListener;

    return-void
.end method

.method public setDragListener(Lcom/samsung/android/glview/GLView$DragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDragListener:Lcom/samsung/android/glview/GLView$DragListener;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDraggable:Z

    return-void
.end method

.method public setDropListener(Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDropListener:Lcom/sec/android/app/camera/widget/gl/DragDropBox$DropListener;

    return-void
.end method

.method public setDroppable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mDroppable:Z

    return-void
.end method

.method protected setEmpty(Z)V
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/widget/gl/EmptyItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/widget/gl/EmptyItem;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLView;->setTag(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setDraggable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mGLContext:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox$1;-><init>(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mIsAreaLineEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mGLContext:Lcom/samsung/android/glview/GLContext;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v4

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v5

    const v3, 0x7f0e0014

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v6

    const v3, 0x7f0b00ad

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v7, v3

    move v3, v2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLRectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mAreaLineRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLRectangle;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNext(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    return-void
.end method

.method public setPrevious(Lcom/sec/android/app/camera/widget/gl/DragDropBox;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    return-void
.end method

.method protected final shiftLeft()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mPrevious:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final shiftRight()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->shiftRight()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mNext:Lcom/sec/android/app/camera/widget/gl/DragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->mView:Lcom/samsung/android/glview/GLView;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->relocateItem(Lcom/sec/android/app/camera/widget/gl/DragDropBox;Lcom/samsung/android/glview/GLView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/DragDropBox;->setEmpty(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
