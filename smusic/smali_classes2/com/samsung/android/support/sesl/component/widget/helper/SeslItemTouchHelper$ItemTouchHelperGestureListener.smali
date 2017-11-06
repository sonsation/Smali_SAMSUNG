.class Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SeslItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;)V
    .locals 0

    .prologue
    .line 2383
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2384
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2390
    .local v8, "dragGrabHandleDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    .line 2391
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 2392
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_1

    .line 2393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v12

    .line 2394
    .local v12, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v12, :cond_1

    .line 2395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v6, v12}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->hasDragFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2396
    const/4 v1, 0x0

    .line 2453
    .end local v7    # "child":Landroid/view/View;
    .end local v12    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :goto_0
    return v1

    .line 2399
    .restart local v7    # "child":Landroid/view/View;
    .restart local v12    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2400
    .local v4, "childRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2401
    .local v5, "outGrabHandleRect":Landroid/graphics/Rect;
    invoke-virtual {v7, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2402
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 2403
    .local v2, "drawableWidth":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 2406
    .local v3, "drawableHeight":I
    const/4 v10, 0x0

    .line 2429
    .local v10, "isLayoutRtl":Z
    const/16 v1, 0x15

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 2434
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 2435
    .local v11, "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 2436
    .local v9, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 2437
    .local v13, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    .line 2438
    .local v14, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v13, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    .line 2439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v14, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    .line 2441
    float-to-int v1, v13

    float-to-int v6, v14

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2442
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v15, 0x0

    iput v15, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    iput v15, v1, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 2447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v6, 0x2

    invoke-virtual {v1, v12, v6}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    .line 2453
    .end local v2    # "drawableWidth":I
    .end local v3    # "drawableHeight":I
    .end local v4    # "childRect":Landroid/graphics/Rect;
    .end local v5    # "outGrabHandleRect":Landroid/graphics/Rect;
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "index":I
    .end local v10    # "isLayoutRtl":Z
    .end local v11    # "pointerId":I
    .end local v12    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2458
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    invoke-virtual {v6, p1}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2459
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2460
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 2461
    .local v3, "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    if-eqz v3, :cond_0

    .line 2462
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->hasDragFlag(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2487
    .end local v3    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 2465
    .restart local v3    # "vh":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 2469
    .local v2, "pointerId":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    if-ne v2, v6, :cond_0

    .line 2470
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2471
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2472
    .local v4, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2473
    .local v5, "y":F
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v4, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchX:F

    .line 2474
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iput v5, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mInitialTouchY:F

    .line 2475
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v8, 0x0

    iput v8, v7, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDy:F

    iput v8, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mDx:F

    .line 2480
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mCallback:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->mRecyclerView:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 2481
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getDragGrabHandleDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2482
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;

    const/4 v7, 0x2

    invoke-virtual {v6, v3, v7}, Lcom/samsung/android/support/sesl/component/widget/helper/SeslItemTouchHelper;->select(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
