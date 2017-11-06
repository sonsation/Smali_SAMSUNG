.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;
.super Ljava/lang/Object;
.source "SeslItemTouchHelper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 325
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 329
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 330
    .local v0, "action":I
    if-nez v0, :cond_3

    .line 331
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    .line 332
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    .line 333
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    .line 334
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->obtainVelocityTracker()V

    .line 335
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 336
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v5, p2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;

    move-result-object v1

    .line 337
    .local v1, "animation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    if-eqz v1, :cond_1

    .line 338
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    iget v7, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    .line 339
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    iget v7, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    .line 340
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->endRecoverAnimation(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;Z)I

    .line 341
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v6, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->clearView(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 344
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    iget v7, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 345
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v5, p2, v6, v4}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 362
    .end local v1    # "animation":Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$RecoverAnimation;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 363
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 365
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    :goto_1
    return v3

    .line 348
    :cond_3
    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    if-ne v0, v3, :cond_5

    .line 349
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    .line 350
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 351
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    if-eq v5, v6, :cond_1

    .line 354
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 358
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 359
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v5, v0, p2, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    .end local v2    # "index":I
    :cond_6
    move v3, v4

    .line 365
    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 428
    if-nez p1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 370
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 375
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 376
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 378
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    if-ne v6, v8, :cond_2

    .line 424
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 382
    .local v0, "action":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 383
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_3

    .line 384
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v6, v0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 386
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v5, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelected:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    .line 387
    .local v5, "viewHolder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v5, :cond_1

    .line 390
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 408
    :cond_4
    :goto_1
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 409
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v8, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    goto :goto_0

    .line 393
    :pswitch_2
    if-ltz v1, :cond_1

    .line 394
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 395
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->moveIfNecessary(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)V

    .line 396
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 397
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 398
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V

    goto :goto_0

    .line 403
    :pswitch_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 404
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 412
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 413
    .local v4, "pointerIndex":I
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 414
    .local v3, "pointerId":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    if-ne v3, v6, :cond_1

    .line 417
    if-nez v4, :cond_5

    const/4 v2, 0x1

    .line 418
    .local v2, "newPointerIndex":I
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    .line 419
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$2;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v6, p2, v7, v4}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
