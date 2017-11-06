.class public Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
.super Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;
.source "SeslDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$VpaListenerAdapter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SeslDefaultItemAnimator"


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mExpandCollapseAnimItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandCollapseBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExpandCollapseAnimationRunning:Z

.field private mIsGroupVHInPendingMove:Z

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionCompare:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mStartVisibleGhostArea:Landroid/graphics/Rect;

.field private mTopOfGhostView:I

.field private mTransY:I

.field private mVisibleGhostArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    .line 74
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    .line 75
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsExpandCollapseAnimationRunning:Z

    .line 124
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPositionCompare:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsExpandCollapseAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->clearExpandCollapseState()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;

    .prologue
    .line 50
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    return v0
.end method

.method private animateCollapseImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;II)V
    .locals 10
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "num"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 367
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : holder.itemView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", holder position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 369
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 370
    .local v1, "hostView":Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/animation/SeslAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 372
    .local v2, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    if-nez p2, :cond_1

    .line 373
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    .line 374
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    .line 375
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 376
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 377
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 381
    :goto_0
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : mVisibleGhostArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v4, p3, -0x1

    if-ne p2, v4, :cond_0

    .line 390
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "collapseAnim : animateCollapseImpl : lastItem, mTopOfGhostView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->combineMutipleSnapShot(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 394
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    if-nez v4, :cond_0

    .line 395
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    aput v5, v4, v9

    const/4 v5, 0x1

    aput v9, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 396
    .local v0, "collapseAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getExpandCollapseDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 397
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$5;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 409
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 443
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 444
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 445
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 446
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 448
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : mVisibleGhostArea.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : mStartVisibleGhostArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v4, "SeslDefaultItemAnimator"

    const-string v5, "animateCollapseImpl : call collapseAnim.start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 455
    .end local v0    # "collapseAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    .line 379
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    goto/16 :goto_0
.end method

.method private animateExpandImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;II)V
    .locals 10
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "num"    # I
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 458
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateExpandImpl : holder.itemView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", holder position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", num = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 460
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, "hostView":Landroid/view/View;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/animation/SeslAnimatorUtils;->getBitmapDrawableFromView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 463
    .local v2, "snapshot":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    if-nez p2, :cond_1

    .line 466
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    .line 467
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    .line 468
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 469
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 470
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 474
    :goto_0
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateExpandImpl : mVisibleGhostArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    add-int/lit8 v4, p3, -0x1

    if-ne p2, v4, :cond_0

    .line 480
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateExpandImpl : lastItem, mTopOfGhostView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTopOfGhostView:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->combineMutipleSnapShot(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 484
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v9, v4, v9

    const/4 v5, 0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 485
    .local v0, "expandAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getExpandCollapseDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 486
    sget-object v4, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->ELASTIC_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$7;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 498
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$8;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 554
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 555
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 556
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 558
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : mVisibleGhostArea.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mTransY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v4, "SeslDefaultItemAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateCollapseImpl : mStartVisibleGhostArea = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v4, "SeslDefaultItemAnimator"

    const-string v5, "animateCollapseImpl : call expandAnim.start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 564
    .end local v0    # "expandAnim":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    .line 472
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    goto/16 :goto_0
.end method

.method private animateRemoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 286
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 287
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 288
    .local v0, "animation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    .line 290
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 305
    return-void
.end method

.method private clearExpandCollapseState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseAnimItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 355
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 361
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mTransY:I

    .line 362
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsExpandCollapseAnimationRunning:Z

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->clearGroupViewHolderInternal()V

    .line 364
    return-void
.end method

.method private combineMutipleSnapShot(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    const-string v8, "SeslDefaultItemAnimator"

    const-string v9, "combineMutipleSnapShot : parameter view is null, return null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v8, 0x0

    .line 345
    :goto_0
    return-object v8

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 332
    .local v6, "itemHeight":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int v4, v6, v8

    .line 333
    .local v4, "combinedBitmapHeight":I
    const-string v8, "SeslDefaultItemAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "combineMutipleSnapShot : combinedBitmapHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", itemHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 336
    .local v3, "combinedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 338
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mExpandCollapseBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 339
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    mul-int v7, v6, v5

    .line 340
    .local v7, "top":I
    add-int v1, v7, v6

    .line 341
    .local v1, "bottom":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v0, v8, v7, v9, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 342
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 337
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 345
    .end local v0    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v1    # "bottom":I
    .end local v7    # "top":I
    :cond_1
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 902
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 903
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    .line 904
    .local v0, "changeInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 905
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 906
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 902
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 910
    .end local v0    # "changeInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    .prologue
    .line 913
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    .line 916
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    .line 919
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 923
    iput-object v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 930
    :goto_0
    iget-object v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 931
    iget-object v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 932
    iget-object v1, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 933
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchChangeFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)V

    .line 934
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 924
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 925
    iput-object v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 926
    const/4 v0, 0x1

    goto :goto_0

    .line 928
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 1024
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1025
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1026
    return-void
.end method


# virtual methods
.method public animateAdd(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 569
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method animateAddImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 575
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 576
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 577
    .local v0, "animation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$9;

    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$9;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V

    .line 579
    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    .line 596
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 597
    return-void
.end method

.method public animateChange(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z
    .locals 13
    .param p1, "oldHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 823
    if-ne p1, p2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 826
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z

    move-result v0

    .line 846
    :goto_0
    return v0

    .line 828
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v10

    .line 829
    .local v10, "prevTranslationX":F
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v11

    .line 830
    .local v11, "prevTranslationY":F
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v9

    .line 831
    .local v9, "prevAlpha":F
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 832
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-float/2addr v0, v10

    float-to-int v7, v0

    .line 833
    .local v7, "deltaX":I
    sub-int v0, p6, p4

    int-to-float v0, v0

    sub-float/2addr v0, v11

    float-to-int v8, v0

    .line 835
    .local v8, "deltaY":I
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 836
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 837
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 838
    if-eqz p2, :cond_1

    .line 840
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 841
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 842
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 843
    iget-object v0, p2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 845
    :cond_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    const/4 v0, 0x1

    goto :goto_0
.end method

.method animateChangeImpl(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 850
    iget-object v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 851
    .local v0, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-nez v0, :cond_2

    move-object v5, v6

    .line 852
    .local v5, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 853
    .local v1, "newHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 854
    .local v2, "newView":Landroid/view/View;
    :goto_1
    if-eqz v5, :cond_0

    .line 855
    invoke-static {v5}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    .line 856
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 855
    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v4

    .line 857
    .local v4, "oldViewAnim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    iget v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 859
    iget v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 860
    invoke-virtual {v4, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$12;

    invoke-direct {v7, p0, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$12;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    .line 876
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 878
    .end local v4    # "oldViewAnim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_0
    if-eqz v2, :cond_1

    .line 879
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v3

    .line 880
    .local v3, "newViewAnimation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->newHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {v3, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 882
    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$13;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v6

    .line 897
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 899
    .end local v3    # "newViewAnimation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    :cond_1
    return-void

    .line 851
    .end local v1    # "newHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v2    # "newView":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "newHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v5    # "view":Landroid/view/View;
    :cond_3
    move-object v2, v6

    .line 853
    goto :goto_1
.end method

.method public animateMove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)Z
    .locals 10
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 602
    iget-object v8, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 603
    .local v8, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 604
    int-to-float v0, p3

    iget-object v1, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 605
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 606
    sub-int v6, p4, p2

    .line 607
    .local v6, "deltaX":I
    sub-int v7, p5, p3

    .line 608
    .local v7, "deltaY":I
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    .line 609
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 610
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    .line 612
    :cond_0
    if-eqz v6, :cond_1

    .line 613
    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 615
    :cond_1
    if-eqz v7, :cond_2

    .line 616
    neg-int v0, v7

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 618
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    const/4 v0, 0x1

    goto :goto_0
.end method

.method animateMoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IIIIZ)V
    .locals 14
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "isExpand"    # Z

    .prologue
    .line 623
    iget-object v12, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 624
    .local v12, "view":Landroid/view/View;
    sub-int v5, p4, p2

    .line 625
    .local v5, "deltaX":I
    sub-int v6, p5, p3

    .line 627
    .local v6, "deltaY":I
    const/4 v8, 0x0

    .line 628
    .local v8, "isGroupViewType":Z
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v9, p3, v2

    .line 631
    .local v9, "oldBoundTop":I
    const-string v2, "SeslDefaultItemAnimator"

    const-string v3, "***** Start animateMoveImpl *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const-string v2, "SeslDefaultItemAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateMoveImpl : holder.itemView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const-string v2, "SeslDefaultItemAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateMoveImpl : fromX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const-string v2, "SeslDefaultItemAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateMoveImpl : deltaX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deltaY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    if-eqz v2, :cond_0

    .line 638
    iget v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->mItemViewType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getGroupViewHolderInternal()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v2, v12, :cond_0

    .line 639
    const-string v2, "SeslDefaultItemAnimator"

    const-string v3, "animateMoveImpl : this viewHolder is EXPANDABLE_VIEW_TYPE_GROUP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v8, 0x1

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getItemAnimationTypeInternal()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 645
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getExpandCollapseDuration()J

    move-result-wide v10

    .line 650
    .local v10, "moveDuration":J
    :goto_0
    if-eqz v5, :cond_1

    .line 651
    invoke-static {v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationX(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 653
    :cond_1
    if-eqz v6, :cond_2

    .line 654
    invoke-static {v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->translationY(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 659
    :cond_2
    invoke-static {v12}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v7

    .line 660
    .local v7, "animation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    if-eqz p6, :cond_3

    .line 662
    sget-object v2, Lcom/samsung/android/support/sesl/component/animation/SeslElasticInterpolator;->ELASTIC_40:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 665
    :cond_3
    invoke-virtual {v7, v10, v11}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v13

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$10;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;IILcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;)V

    invoke-virtual {v13, v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 691
    if-eqz v8, :cond_4

    .line 692
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;

    invoke-direct {v3, p0, v12, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$11;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Landroid/view/View;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 815
    :cond_4
    const-string v2, "SeslDefaultItemAnimator"

    const-string v3, "***** End animateMoveImpl *****"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-void

    .line 647
    .end local v7    # "animation":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .end local v10    # "moveDuration":J
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getMoveDuration()J

    move-result-wide v10

    .restart local v10    # "moveDuration":J
    goto :goto_0
.end method

.method public animateRemove(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->resetAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1165
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1142
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 1141
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1144
    :cond_0
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 1049
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 1052
    :cond_0
    return-void
.end method

.method public drawGhost(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsExpandCollapseAnimationRunning:Z

    if-eqz v1, :cond_2

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 310
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 311
    const-string v1, "SeslDefaultItemAnimator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawGhost : mVisibleGhostArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStartVisibleGhostArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 314
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    if-nez v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mStartVisibleGhostArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 318
    :cond_0
    const-string v1, "SeslDefaultItemAnimator"

    const-string v2, "drawGhost : mCombinedBitmapDrawable.draw"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mCombinedBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 321
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 323
    .end local v0    # "count":I
    :cond_2
    return-void
.end method

.method public endAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 939
    iget-object v6, p1, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 941
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 943
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 944
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 945
    .local v4, "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 946
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 947
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 948
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 949
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 943
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 952
    .end local v4    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 953
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 954
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 955
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 957
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 958
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 959
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 962
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 963
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 964
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 965
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 966
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 962
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 969
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 970
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 971
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 972
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 973
    .restart local v4    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 974
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 975
    invoke-virtual {v6, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 976
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 977
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 978
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 979
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 969
    .end local v4    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 971
    .restart local v4    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 985
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 986
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 987
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 988
    invoke-virtual {v6, v9}, Landroid/view/View;->setAlpha(F)V

    .line 989
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 990
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 991
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 985
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 998
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1004
    :cond_b
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1010
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1016
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1020
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 1021
    return-void
.end method

.method public endAnimations()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 1056
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1057
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1058
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 1059
    .local v4, "item":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    iget-object v10, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v9, v10, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1060
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 1061
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1062
    iget-object v10, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1063
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1057
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1065
    .end local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_0
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1066
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 1067
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 1068
    .local v4, "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchRemoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1069
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1066
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1071
    .end local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1072
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 1073
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 1074
    .restart local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1075
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1076
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1077
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1072
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1079
    .end local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1080
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 1081
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;)V

    .line 1080
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 1083
    :cond_3
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1084
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->isRunning()Z

    move-result v10

    if-nez v10, :cond_4

    .line 1138
    :goto_4
    return-void

    .line 1088
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1089
    .local v6, "listCount":I
    add-int/lit8 v3, v6, -0x1

    :goto_5
    if-ltz v3, :cond_7

    .line 1090
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1091
    .local v8, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1092
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_6
    if-ltz v5, :cond_6

    .line 1093
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 1094
    .local v7, "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    iget-object v4, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 1095
    .restart local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1096
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 1097
    invoke-virtual {v9, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 1098
    iget-object v10, v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchMoveFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1099
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1100
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1101
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1092
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 1089
    .end local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v7    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 1105
    .end local v5    # "j":I
    .end local v8    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1106
    add-int/lit8 v3, v6, -0x1

    :goto_7
    if-ltz v3, :cond_a

    .line 1107
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1108
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1109
    add-int/lit8 v5, v2, -0x1

    .restart local v5    # "j":I
    :goto_8
    if-ltz v5, :cond_9

    .line 1110
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 1111
    .restart local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v9, v4, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1112
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {v9, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1113
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAddFinished(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 1114
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1115
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1116
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1109
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .line 1106
    .end local v4    # "item":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1120
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_a
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1121
    add-int/lit8 v3, v6, -0x1

    :goto_9
    if-ltz v3, :cond_d

    .line 1122
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1123
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1124
    add-int/lit8 v5, v2, -0x1

    .restart local v5    # "j":I
    :goto_a
    if-ltz v5, :cond_c

    .line 1125
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;)V

    .line 1126
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1127
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1124
    :cond_b
    add-int/lit8 v5, v5, -0x1

    goto :goto_a

    .line 1121
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 1132
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    .end local v5    # "j":I
    :cond_d
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1133
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1134
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1135
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 1137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->dispatchAnimationsFinished()V

    goto/16 :goto_4
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 1031
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 1033
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 1034
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 1035
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 1036
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 1037
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 1038
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 1039
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 1040
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    .line 1040
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runPendingAnimations()V
    .locals 34

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_1

    const/16 v23, 0x1

    .line 138
    .local v23, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_2

    const/16 v22, 0x1

    .line 139
    .local v22, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_3

    const/4 v11, 0x1

    .line 140
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_4

    const/4 v6, 0x1

    .line 141
    .local v6, "additionsPending":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getItemAnimationTypeInternal()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    const/4 v13, 0x1

    .line 142
    .local v13, "expandCollapseAnimation":Z
    :goto_4
    if-eqz v22, :cond_6

    if-eqz v6, :cond_6

    if-eqz v13, :cond_6

    const/4 v12, 0x1

    .line 144
    .local v12, "doExpand":Z
    :goto_5
    const-string v30, "SeslDefaultItemAnimator"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "runPendingAnimations : removalsPending = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", movesPending = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", changesPending = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", additionsPending = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", doExpand = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-nez v23, :cond_7

    if-nez v22, :cond_7

    if-nez v6, :cond_7

    if-nez v11, :cond_7

    .line 149
    const-string v30, "SeslDefaultItemAnimator"

    const-string/jumbo v31, "runPendingAnimations : nothing to animate"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_6
    return-void

    .line 137
    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v12    # "doExpand":Z
    .end local v13    # "expandCollapseAnimation":Z
    .end local v22    # "movesPending":Z
    .end local v23    # "removalsPending":Z
    :cond_1
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 138
    .restart local v23    # "removalsPending":Z
    :cond_2
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 139
    .restart local v22    # "movesPending":Z
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 140
    .restart local v11    # "changesPending":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 141
    .restart local v6    # "additionsPending":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    .line 142
    .restart local v13    # "expandCollapseAnimation":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_5

    .line 154
    .restart local v12    # "doExpand":Z
    :cond_7
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    .line 155
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v16

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    .line 157
    .local v17, "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getGroupViewHolderInternal()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v14

    .line 158
    .local v14, "gVH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v14, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v30, v0

    iget-object v0, v14, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 159
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mIsGroupVHInPendingMove:Z

    .line 155
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 163
    .end local v14    # "gVH":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v17    # "moveInfo":Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;
    :cond_9
    const-string v30, "SeslDefaultItemAnimator"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "runPendingAnimations : expandCollapseAnimation = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez v13, :cond_a

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_8
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 168
    .local v15, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateRemoveImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    goto :goto_8

    .line 171
    .end local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 172
    .local v26, "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPositionCompare:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 174
    const/16 v16, 0x0

    :goto_9
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 176
    .restart local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const-string v30, "SeslDefaultItemAnimator"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "runPendingAnimations : call animateCollapseImpl, i = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", holder.itemView.getTop() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v15, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateCollapseImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;II)V

    .line 174
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 180
    .end local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v26    # "size":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 183
    if-eqz v22, :cond_c

    .line 184
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v21, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 188
    new-instance v20, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Ljava/util/ArrayList;Z)V

    .line 199
    .local v20, "mover":Ljava/lang/Runnable;
    if-eqz v23, :cond_10

    .line 200
    if-eqz v13, :cond_f

    .line 201
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    .line 212
    .end local v20    # "mover":Ljava/lang/Runnable;
    .end local v21    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    :cond_c
    :goto_a
    if-eqz v11, :cond_d

    .line 213
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 217
    new-instance v7, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 227
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v23, :cond_11

    .line 228
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v30

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 229
    .restart local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    iget-object v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v7, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 236
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    .end local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_d
    :goto_b
    if-eqz v6, :cond_0

    .line 237
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->clear()V

    .line 241
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 252
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v13, :cond_16

    .line 253
    if-nez v23, :cond_e

    if-nez v22, :cond_e

    if-eqz v11, :cond_15

    .line 254
    :cond_e
    if-eqz v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v24

    .line 255
    .local v24, "removeDuration":J
    :goto_c
    if-eqz v22, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getMoveDuration()J

    move-result-wide v18

    .line 256
    .local v18, "moveDuration":J
    :goto_d
    if-eqz v11, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 257
    .local v8, "changeDuration":J
    :goto_e
    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v30

    add-long v28, v24, v30

    .line 258
    .local v28, "totalDelay":J
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 259
    .local v27, "view":Landroid/view/View;
    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_6

    .line 203
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v18    # "moveDuration":J
    .end local v24    # "removeDuration":J
    .end local v27    # "view":Landroid/view/View;
    .end local v28    # "totalDelay":J
    .restart local v20    # "mover":Ljava/lang/Runnable;
    .restart local v21    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    :cond_f
    const/16 v30, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;->holder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 204
    .restart local v27    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v30

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_a

    .line 207
    .end local v27    # "view":Landroid/view/View;
    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_a

    .line 231
    .end local v20    # "mover":Ljava/lang/Runnable;
    .end local v21    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    :cond_11
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 254
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;>;"
    :cond_12
    const-wide/16 v24, 0x0

    goto :goto_c

    .line 255
    .restart local v24    # "removeDuration":J
    :cond_13
    const-wide/16 v18, 0x0

    goto :goto_d

    .line 256
    .restart local v18    # "moveDuration":J
    :cond_14
    const-wide/16 v8, 0x0

    goto :goto_e

    .line 261
    .end local v18    # "moveDuration":J
    .end local v24    # "removeDuration":J
    :cond_15
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_6

    .line 264
    :cond_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 265
    .restart local v26    # "size":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mPositionCompare:Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator$PositionCompare;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    const/16 v16, 0x0

    :goto_f
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    .line 268
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 269
    .restart local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    const-string v30, "SeslDefaultItemAnimator"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "runPendingAnimations : call animateExpandImpl, i = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", holder.itemView.getTop() = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    iget-object v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getTop()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", size = "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v26

    invoke-direct {v0, v15, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->animateExpandImpl(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;II)V

    .line 267
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    .line 272
    .end local v15    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method
