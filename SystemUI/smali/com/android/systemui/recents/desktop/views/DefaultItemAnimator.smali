.class public Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;,
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;,
        Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$VpaListenerAdapter;
    }
.end annotation


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field removeViewOrigX:I

.field removeViewOrigY:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 0
    .param p1, "changeInfo"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method private animateAddImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 263
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 264
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 265
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 267
    new-instance v3, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$5;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 266
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 258
    return-void
.end method

.method private animateChangeImpl(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 11
    .param p1, "changeInfo"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    .prologue
    const/4 v10, 0x0

    .line 395
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 396
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_2

    const/4 v5, 0x0

    .line 397
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 398
    .local v1, "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 399
    :goto_1
    if-eqz v5, :cond_0

    .line 400
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 401
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 400
    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    .line 402
    .local v4, "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget v6, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 404
    iget v6, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 405
    invoke-virtual {v4, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;

    invoke-direct {v7, p0, p1, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$7;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 423
    .end local v4    # "oldViewAnim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_0
    if-eqz v2, :cond_1

    .line 424
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 425
    .local v3, "newViewAnimation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v3, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 427
    const/high16 v7, 0x3f800000    # 1.0f

    .line 426
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 427
    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;

    invoke-direct {v7, p0, p1, v3, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$8;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 426
    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 390
    .end local v3    # "newViewAnimation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    :cond_1
    return-void

    .line 396
    .end local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .local v5, "view":Landroid/view/View;
    goto :goto_0

    .line 398
    .end local v5    # "view":Landroid/view/View;
    .restart local v1    # "newHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v2, 0x0

    .local v2, "newView":Landroid/view/View;
    goto :goto_1
.end method

.method private animateMoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 8
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 320
    .local v6, "view":Landroid/view/View;
    sub-int v3, p4, p2

    .line 321
    .local v3, "deltaX":I
    sub-int v4, p5, p3

    .line 322
    .local v4, "deltaY":I
    if-eqz v3, :cond_0

    .line 323
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 325
    :cond_0
    if-eqz v4, :cond_1

    .line 326
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 331
    :cond_1
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v5

    .line 332
    .local v5, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$6;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v7, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 314
    return-void
.end method

.method private animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 212
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 219
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 220
    .local v0, "animation":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 224
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 225
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 228
    const/4 v3, 0x0

    .line 227
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 229
    new-instance v3, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$4;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V

    .line 227
    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 211
    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 593
    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 448
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    .line 449
    .local v0, "changeInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 451
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 446
    .end local v0    # "changeInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    .prologue
    .line 458
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 461
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 457
    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 4
    .param p1, "changeInfo"    # Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;
    .param p2, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_0

    .line 468
    iput-object v2, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->newHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 475
    :goto_0
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 476
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 477
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 478
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 479
    const/4 v1, 0x1

    return v1

    .line 469
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 470
    iput-object v2, p1, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 471
    const/4 v0, 0x1

    goto :goto_0

    .line 473
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 569
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/animation/AnimatorCompatHelper;->clearInterpolator(Landroid/view/View;)V

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 568
    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 253
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 16
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .prologue
    .line 364
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 367
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v2

    return v2

    .line 369
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v13

    .line 370
    .local v13, "prevTranslationX":F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v14

    .line 371
    .local v14, "prevTranslationY":F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v12

    .line 372
    .local v12, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 373
    sub-int v2, p5, p3

    int-to-float v2, v2

    sub-float/2addr v2, v13

    float-to-int v10, v2

    .line 374
    .local v10, "deltaX":I
    sub-int v2, p6, p4

    int-to-float v2, v2

    sub-float/2addr v2, v14

    float-to-int v11, v2

    .line 376
    .local v11, "deltaY":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v13}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 377
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v14}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 378
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v12}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 379
    if-eqz p2, :cond_1

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 382
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v10

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 383
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v11

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 384
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v2, 0x1

    return v2
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 11
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 294
    iget-object v9, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 295
    .local v9, "view":Landroid/view/View;
    int-to-float v0, p2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 296
    int-to-float v0, p3

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int p3, v0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 298
    sub-int v7, p4, p2

    .line 299
    .local v7, "deltaX":I
    sub-int v8, p5, p3

    .line 300
    .local v8, "deltaY":I
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 302
    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    if-eqz v7, :cond_1

    .line 305
    neg-int v0, v7

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 307
    :cond_1
    if-eqz v8, :cond_2

    .line 308
    neg-int v0, v8

    int-to-float v0, v0

    invoke-static {v9, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 310
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIIILcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const/4 v0, 0x1

    return v0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->resetAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
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
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 687
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 686
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 685
    :cond_0
    return-void
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "item"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 484
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 486
    .local v6, "view":Landroid/view/View;
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 488
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 489
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    .line 490
    .local v4, "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_0

    .line 491
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 492
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 494
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 488
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 497
    .end local v4    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 498
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 499
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 502
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 503
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 504
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 507
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 508
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 509
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 510
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 511
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 507
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 514
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_2
    if-ltz v2, :cond_8

    .line 515
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 516
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "j":I
    :goto_3
    if-ltz v3, :cond_6

    .line 517
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    .line 518
    .restart local v4    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    iget-object v7, v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_7

    .line 519
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 520
    invoke-static {v6, v8}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 521
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 522
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 523
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 524
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 514
    .end local v4    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 516
    .restart local v4    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 530
    .end local v3    # "j":I
    .end local v4    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_4
    if-ltz v2, :cond_a

    .line 531
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 532
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 533
    invoke-static {v6, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 536
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 530
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 543
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 549
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 555
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 561
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 565
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 483
    return-void
.end method

.method public endAnimations()V
    .locals 14

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 601
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 602
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 603
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    .line 604
    .local v5, "item":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    iget-object v11, v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 605
    .local v10, "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 606
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 607
    iget-object v11, v5, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 608
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 602
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 610
    .end local v5    # "item":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 611
    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 612
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 613
    .local v4, "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 614
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 616
    .end local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 617
    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    .line 618
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 619
    .restart local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 620
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 621
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 622
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 617
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 624
    .end local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 625
    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-ltz v3, :cond_3

    .line 626
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    .line 625
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 628
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 629
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_4

    .line 630
    return-void

    .line 633
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 634
    .local v7, "listCount":I
    add-int/lit8 v3, v7, -0x1

    :goto_4
    if-ltz v3, :cond_7

    .line 635
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 636
    .local v9, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 637
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 638
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    .line 639
    .local v8, "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    iget-object v4, v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 640
    .restart local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 641
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 642
    invoke-static {v10, v12}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 643
    iget-object v11, v8, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 644
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 646
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 634
    .end local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v8    # "moveInfo":Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;
    .end local v10    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 650
    .end local v6    # "j":I
    .end local v9    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 651
    add-int/lit8 v3, v7, -0x1

    :goto_6
    if-ltz v3, :cond_a

    .line 652
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 653
    .local v0, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 654
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_7
    if-ltz v6, :cond_9

    .line 655
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 656
    .restart local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 657
    .restart local v10    # "view":Landroid/view/View;
    invoke-static {v10, v13}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 658
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 659
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 661
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 654
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 651
    .end local v4    # "item":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v10    # "view":Landroid/view/View;
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 665
    .end local v0    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "j":I
    :cond_a
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 666
    add-int/lit8 v3, v7, -0x1

    :goto_8
    if-ltz v3, :cond_d

    .line 667
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 668
    .local v1, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 669
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "j":I
    :goto_9
    if-ltz v6, :cond_c

    .line 670
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;)V

    .line 671
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 672
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 669
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 666
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 677
    .end local v1    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    .end local v6    # "j":I
    :cond_d
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 678
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 679
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 680
    iget-object v11, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 682
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->dispatchAnimationsFinished()V

    .line 600
    return-void
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 575
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 575
    :cond_0
    return v0
.end method

.method public runPendingAnimations()V
    .locals 28

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v19, 0x0

    .line 113
    .local v19, "removalsPending":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v18, 0x0

    .line 114
    .local v18, "movesPending":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    const/4 v11, 0x0

    .line 115
    .local v11, "changesPending":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_4

    const/4 v6, 0x0

    .line 116
    .local v6, "additionsPending":Z
    :goto_3
    if-nez v19, :cond_0

    if-eqz v18, :cond_5

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "holder$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 122
    .local v12, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_4

    .line 112
    .end local v6    # "additionsPending":Z
    .end local v11    # "changesPending":Z
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v13    # "holder$iterator":Ljava/util/Iterator;
    .end local v18    # "movesPending":Z
    .end local v19    # "removalsPending":Z
    :cond_1
    const/16 v19, 0x1

    .restart local v19    # "removalsPending":Z
    goto :goto_0

    .line 113
    :cond_2
    const/16 v18, 0x1

    .restart local v18    # "movesPending":Z
    goto :goto_1

    .line 114
    :cond_3
    const/4 v11, 0x1

    .restart local v11    # "changesPending":Z
    goto :goto_2

    .line 115
    :cond_4
    const/4 v6, 0x1

    .restart local v6    # "additionsPending":Z
    goto :goto_3

    .line 116
    :cond_5
    if-nez v6, :cond_0

    if-nez v11, :cond_0

    .line 118
    return-void

    .line 124
    .restart local v13    # "holder$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 126
    if-eqz v18, :cond_7

    .line 127
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v17, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 131
    new-instance v16, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$1;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 142
    .local v16, "mover":Ljava/lang/Runnable;
    if-eqz v19, :cond_b

    .line 143
    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 144
    .local v24, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 150
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    .end local v24    # "view":Landroid/view/View;
    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    .line 151
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v10, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v7, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v10}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$2;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 165
    .local v7, "changer":Ljava/lang/Runnable;
    if-eqz v19, :cond_c

    .line 166
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;->oldHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 167
    .restart local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-static {v0, v7, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 173
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    .end local v12    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_8
    :goto_6
    if-eqz v6, :cond_a

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 178
    new-instance v4, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$3;-><init>(Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;Ljava/util/ArrayList;)V

    .line 187
    .local v4, "adder":Ljava/lang/Runnable;
    if-nez v19, :cond_9

    if-nez v18, :cond_9

    if-eqz v11, :cond_10

    .line 188
    :cond_9
    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v20

    .line 189
    .local v20, "removeDuration":J
    :goto_7
    if-eqz v18, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v14

    .line 190
    .local v14, "moveDuration":J
    :goto_8
    if-eqz v11, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v8

    .line 191
    .local v8, "changeDuration":J
    :goto_9
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v26

    add-long v22, v20, v26

    .line 192
    .local v22, "totalDelay":J
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 193
    .restart local v24    # "view":Landroid/view/View;
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v4, v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    .line 107
    .end local v4    # "adder":Ljava/lang/Runnable;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v8    # "changeDuration":J
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    .end local v22    # "totalDelay":J
    .end local v24    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return-void

    .line 146
    .restart local v16    # "mover":Ljava/lang/Runnable;
    .restart local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_5

    .line 169
    .end local v16    # "mover":Ljava/lang/Runnable;
    .end local v17    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$MoveInfo;>;"
    .restart local v7    # "changer":Ljava/lang/Runnable;
    .restart local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    :cond_c
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 188
    .end local v7    # "changer":Ljava/lang/Runnable;
    .end local v10    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator$ChangeInfo;>;"
    .restart local v4    # "adder":Ljava/lang/Runnable;
    .restart local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_d
    const-wide/16 v20, 0x0

    .restart local v20    # "removeDuration":J
    goto :goto_7

    .line 189
    :cond_e
    const-wide/16 v14, 0x0

    .restart local v14    # "moveDuration":J
    goto :goto_8

    .line 190
    :cond_f
    const-wide/16 v8, 0x0

    goto :goto_9

    .line 195
    .end local v14    # "moveDuration":J
    .end local v20    # "removeDuration":J
    :cond_10
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_a
.end method
