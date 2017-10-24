.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DRAG_ACCELERATOR_MODE_CHARACTER:I = 0x1

.field private static final DRAG_ACCELERATOR_MODE_INACTIVE:I = 0x0

.field private static final DRAG_ACCELERATOR_MODE_PARAGRAPH:I = 0x3

.field private static final DRAG_ACCELERATOR_MODE_WORD:I = 0x2


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mDragAcceleratorMode:I

.field private mEndHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mHaventMovedEnoughToStartDrag:Z

.field private mLastOffset:I

.field private mLineSelectionIsOn:I

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mStartHandle:Landroid/widget/Editor$SelectionHandleView;

.field private mStartOffset:I

.field private mSwitchedLines:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionHandleView;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/Editor$SelectionModifierCursorController;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    return-void
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/Editor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 6288
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6268
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6269
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLastOffset:I

    .line 6273
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6275
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 6278
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 6289
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 6290
    invoke-static {p1}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6291
    invoke-static {p1}, Landroid/widget/Editor;->-wrap21(Landroid/widget/Editor;)V

    .line 6288
    :cond_0
    return-void
.end method

.method private initDrawables()V
    .locals 3

    .prologue
    .line 6312
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6313
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6314
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    .line 6313
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6316
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6317
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 6318
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    .line 6317
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/Editor;->-set5(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 6311
    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 6

    .prologue
    .line 6324
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_0

    .line 6325
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6326
    const v4, 0x1020058

    .line 6327
    const/4 v5, 0x1

    .line 6325
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 6329
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-nez v0, :cond_1

    .line 6330
    new-instance v0, Landroid/widget/Editor$SelectionHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get10(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get9(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6331
    const v4, 0x1020059

    .line 6332
    const/4 v5, 0x2

    .line 6330
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$SelectionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    .line 6335
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 6336
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->show()V

    .line 6338
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 6322
    return-void
.end method

.method private resetDragAcceleratorState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6774
    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6775
    iput v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLastOffset:I

    .line 6776
    iput v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 6777
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 6778
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 6779
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6780
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_0

    .line 6781
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2, v0, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 6773
    :cond_0
    return-void
.end method

.method private selectCurrentParagraphAndStartDrag()Z
    .locals 2

    .prologue
    .line 6637
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6638
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get2(Landroid/widget/Editor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6640
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6641
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6642
    const/4 v0, 0x0

    return v0

    .line 6644
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 6645
    const/4 v0, 0x1

    return v0
.end method

.method private startHide()V
    .locals 8

    .prologue
    const/16 v5, 0x96

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 6411
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionHandleView;->setHideDuration(I)V

    .line 6412
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionHandleView;->setHideDuration(I)V

    .line 6413
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v6}, Landroid/widget/Editor$SelectionHandleView;->setIsHideAnimating(Z)V

    .line 6414
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v6}, Landroid/widget/Editor$SelectionHandleView;->setIsHideAnimating(Z)V

    .line 6416
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v7}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6418
    return-void

    .line 6421
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v6}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6424
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v6}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;I)V

    .line 6427
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionHandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 6428
    .local v3, "startHandleAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionHandleView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6430
    .local v0, "endHandleAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6431
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-array v4, v7, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6433
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6434
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6435
    iput v7, v1, Landroid/os/Message;->what:I

    .line 6437
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v5}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6438
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v5}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6439
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4, v6}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 6440
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4, v7}, Landroid/widget/Editor;->removeHandleMessage(I)V

    .line 6442
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6409
    return-void
.end method

.method private startShow()V
    .locals 9

    .prologue
    const/16 v8, 0xc8

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 6366
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$SelectionHandleView;->setShowDuration(I)V

    .line 6367
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v8}, Landroid/widget/Editor$SelectionHandleView;->setShowDuration(I)V

    .line 6368
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v6}, Landroid/widget/Editor$SelectionHandleView;->setIsShowAnimating(Z)V

    .line 6369
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4, v6}, Landroid/widget/Editor$SelectionHandleView;->setIsShowAnimating(Z)V

    .line 6371
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v7}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6374
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v7}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;I)V

    .line 6377
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v6}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6379
    return-void

    .line 6382
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v5}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6385
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4, v5}, Landroid/widget/Editor;->-wrap22(Landroid/widget/Editor;I)V

    .line 6388
    :cond_2
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionHandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 6389
    .local v3, "startHandleAnimator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionHandleView;->getShowAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6390
    .local v0, "endHandleAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6392
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->pause()V

    .line 6394
    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 6396
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 6399
    :cond_4
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6400
    .local v2, "set":Landroid/animation/AnimatorSet;
    new-array v4, v5, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6403
    .local v1, "msg":Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6404
    iput v6, v1, Landroid/os/Message;->what:I

    .line 6406
    iget-object v4, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get0(Landroid/widget/Editor;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 6364
    return-void
.end method

.method private updateCharacterBasedSelection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6649
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 6651
    .local v1, "offset":I
    iget v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLastOffset:I

    if-ne v1, v5, :cond_0

    return-void

    .line 6652
    :cond_0
    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLastOffset:I

    .line 6654
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v5, v6}, Landroid/widget/Editor;->-wrap19(Landroid/widget/Editor;I)I

    move-result v4

    .line 6655
    .local v4, "startOffset":I
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v6, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v5, v6}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v0

    .line 6657
    .local v0, "endOffset":I
    if-ne v4, v0, :cond_1

    .line 6658
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    const-class v6, Landroid/text/style/ReplacementSpan;

    invoke-interface {v5, v4, v0, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ReplacementSpan;

    .line 6660
    .local v3, "replacementSpans":[Landroid/text/style/ReplacementSpan;
    array-length v5, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    .line 6661
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 6662
    .local v2, "replacementSpan":Landroid/text/style/ReplacementSpan;
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 6663
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {v5, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 6667
    .end local v2    # "replacementSpan":Landroid/text/style/ReplacementSpan;
    .end local v3    # "replacementSpans":[Landroid/text/style/ReplacementSpan;
    :cond_1
    if-gt v4, v1, :cond_2

    if-lt v0, v1, :cond_2

    .line 6668
    move v1, v0

    .line 6671
    :cond_2
    if-le v4, v1, :cond_3

    .line 6673
    move v4, v1

    .line 6674
    move v1, v0

    .line 6677
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v1}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 6648
    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6752
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 6753
    .local v2, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 6754
    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 6755
    .local v1, "offset":I
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 6756
    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    .line 6753
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6751
    .end local v1    # "offset":I
    :cond_2
    return-void
.end method

.method private updateParagraphBasedSelection(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6738
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    .line 6740
    .local v1, "offset":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 6741
    .local v6, "start":I
    iget v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6742
    .local v0, "end":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v6, v0}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;II)J

    move-result-wide v2

    .line 6743
    .local v2, "paragraphsRange":J
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 6744
    .local v5, "selectionStart":I
    invoke-static {v2, v3}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v4

    .line 6745
    .local v4, "selectionEnd":I
    iget-object v7, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    invoke-static {v7, v5, v4}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 6737
    return-void
.end method

.method private updateSelection(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6616
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6617
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    packed-switch v0, :pswitch_data_0

    .line 6615
    :cond_0
    :goto_0
    return-void

    .line 6619
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateCharacterBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6622
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateWordBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6625
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateParagraphBasedSelection(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 6617
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateWordBasedSelection(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6682
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    if-eqz v10, :cond_0

    .line 6683
    return-void

    .line 6685
    :cond_0
    const/16 v10, 0x2002

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    .line 6687
    .local v4, "isMouse":Z
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 6686
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    .line 6688
    .local v8, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 6689
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 6691
    .local v2, "eventY":F
    if-eqz v4, :cond_2

    .line 6693
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    .line 6721
    .local v0, "currLine":I
    :cond_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v5

    .line 6723
    .local v5, "offset":I
    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    if-ge v10, v5, :cond_5

    .line 6725
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v5

    .line 6726
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap19(Landroid/widget/Editor;I)I

    move-result v6

    .line 6732
    .local v6, "startOffset":I
    :goto_0
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6733
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Landroid/text/Spannable;

    invoke-static {v10, v6, v5}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;II)V

    .line 6681
    return-void

    .line 6695
    .end local v0    # "currLine":I
    .end local v5    # "offset":I
    .end local v6    # "startOffset":I
    :cond_2
    move v9, v2

    .line 6696
    .local v9, "y":F
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-eqz v10, :cond_3

    .line 6701
    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    .line 6702
    .local v7, "touchSlop":I
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v10, :cond_4

    .line 6703
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v10}, Landroid/widget/Editor$SelectionHandleView;->getIdealVerticalOffset()F

    move-result v3

    .line 6705
    .local v3, "fingerOffset":F
    :goto_1
    sub-float v9, v2, v3

    .line 6708
    .end local v3    # "fingerOffset":F
    .end local v7    # "touchSlop":I
    :cond_3
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    iget v12, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    invoke-static {v10, v11, v12, v9}, Landroid/widget/Editor;->-wrap16(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v0

    .line 6710
    .restart local v0    # "currLine":I
    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    if-nez v10, :cond_1

    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    if-eq v0, v10, :cond_1

    .line 6715
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mSwitchedLines:Z

    .line 6716
    return-void

    .line 6704
    .end local v0    # "currLine":I
    .restart local v7    # "touchSlop":I
    :cond_4
    int-to-float v3, v7

    goto :goto_1

    .line 6729
    .end local v7    # "touchSlop":I
    .end local v9    # "y":F
    .restart local v0    # "currLine":I
    .restart local v5    # "offset":I
    :cond_5
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v10, v5}, Landroid/widget/Editor;->-wrap19(Landroid/widget/Editor;I)I

    move-result v5

    .line 6730
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v11, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    invoke-static {v10, v11}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;I)I

    move-result v6

    .restart local v6    # "startOffset":I
    goto :goto_0
.end method


# virtual methods
.method public enterDrag(I)V
    .locals 3
    .param p1, "dragAcceleratorMode"    # I

    .prologue
    .line 6448
    iput p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    .line 6450
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 6451
    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 6450
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    .line 6452
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLastOffset:I

    .line 6453
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mLineSelectionIsOn:I

    .line 6460
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6461
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 6445
    return-void
.end method

.method public getMaxTouchOffset()I
    .locals 1

    .prologue
    .line 6765
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    .prologue
    .line 6761
    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 6354
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 6355
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->startHide()V

    .line 6356
    return-void

    .line 6358
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6359
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6360
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6361
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6353
    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .prologue
    .line 6343
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 6344
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6345
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6347
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    .line 6348
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->hide()V

    .line 6349
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap3(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 6341
    :cond_1
    return-void
.end method

.method public invalidateHandles()V
    .locals 1

    .prologue
    .line 6827
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    .line 6828
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 6830
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    .line 6831
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->invalidate()V

    .line 6826
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 6823
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorBeingModified()Z
    .locals 1

    .prologue
    .line 6795
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6796
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    .line 6795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 6796
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDragAcceleratorActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6803
    iget v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDragAcceleratorMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    .prologue
    .line 6790
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionHandleView;->isDragging()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 6814
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 6815
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 6817
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 6818
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionHandleView;->onDetached()V

    .line 6813
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 6468
    .local v8, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 6469
    .local v9, "eventY":F
    const/16 v18, 0x2002

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v11

    .line 6470
    .local v11, "isMouse":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 6464
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6472
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 6474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_0

    .line 6477
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 6482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-static {}, Landroid/widget/Editor;->-get1()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 6512
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iput v8, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    .line 6513
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    .line 6514
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 6515
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto :goto_0

    .line 6483
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 6484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 6485
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v18, v0

    sub-float v3, v8, v18

    .line 6486
    .local v3, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v18, v0

    sub-float v4, v9, v18

    .line 6487
    .local v4, "deltaY":F
    mul-float v18, v3, v3

    mul-float v19, v4, v4

    add-float v5, v18, v19

    .line 6490
    .local v5, "distanceSquared":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 6489
    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v17

    .line 6491
    .local v17, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v6

    .line 6493
    .local v6, "doubleTapSlop":I
    mul-int v18, v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v5, v18

    if-gez v18, :cond_8

    const/4 v14, 0x1

    .line 6495
    .local v14, "stayedInArea":Z
    :goto_2
    if-eqz v14, :cond_2

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Landroid/widget/Editor;->-wrap7(Landroid/widget/Editor;FF)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 6496
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 6497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-wrap12(Landroid/widget/Editor;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 6499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 6500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor$InsertionPointCursorController;->hideImmediately()V

    .line 6502
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 6507
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    goto/16 :goto_1

    .line 6493
    .end local v14    # "stayedInArea":Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 6504
    .restart local v14    # "stayedInArea":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get12(Landroid/widget/Editor;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 6505
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->selectCurrentParagraphAndStartDrag()Z

    goto :goto_3

    .line 6523
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    .end local v5    # "distanceSquared":F
    .end local v6    # "doubleTapSlop":I
    .end local v14    # "stayedInArea":Z
    .end local v17    # "viewConfiguration":Landroid/view/ViewConfiguration;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 6524
    const-string/jumbo v19, "android.hardware.touchscreen.multitouch.distinct"

    .line 6523
    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6525
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 6531
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v18

    .line 6530
    invoke-static/range {v18 .. v18}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v16

    .line 6532
    .local v16, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v15

    .line 6534
    .local v15, "touchSlop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 6535
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    move/from16 v18, v0

    sub-float v3, v8, v18

    .line 6536
    .restart local v3    # "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    move/from16 v18, v0

    sub-float v4, v9, v18

    .line 6537
    .restart local v4    # "deltaY":F
    mul-float v18, v3, v3

    mul-float v19, v4, v4

    add-float v5, v18, v19

    .line 6539
    .restart local v5    # "distanceSquared":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 6540
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v7

    .line 6542
    .local v7, "doubleTapTouchSlop":I
    mul-int v18, v7, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v5, v18

    if-gtz v18, :cond_f

    const/16 v18, 0x1

    .line 6541
    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    .line 6544
    .end local v7    # "doubleTapTouchSlop":I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 6547
    mul-int v18, v15, v15

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v5, v18

    if-gtz v18, :cond_10

    const/16 v18, 0x1

    .line 6546
    :goto_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    .line 6551
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    .end local v5    # "distanceSquared":F
    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 6573
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionHandleView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor$SelectionHandleView;->isShowing()Z

    move-result v18

    if-nez v18, :cond_0

    .line 6578
    :cond_e
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 6542
    .restart local v3    # "deltaX":F
    .restart local v4    # "deltaY":F
    .restart local v5    # "distanceSquared":F
    .restart local v7    # "doubleTapTouchSlop":I
    :cond_f
    const/16 v18, 0x0

    goto :goto_4

    .line 6547
    .end local v7    # "doubleTapTouchSlop":I
    :cond_10
    const/16 v18, 0x0

    goto :goto_5

    .line 6552
    .end local v3    # "deltaX":F
    .end local v4    # "deltaY":F
    .end local v5    # "distanceSquared":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v12

    .line 6553
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->hasSelection()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 6554
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_13

    .line 6555
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_13

    .line 6556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v18

    move/from16 v0, v18

    if-gt v12, v0, :cond_13

    .line 6557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-wrap25(Landroid/widget/Editor;)V

    goto/16 :goto_0

    .line 6561
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartOffset:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v12, :cond_d

    .line 6563
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->stopTextActionMode()V

    .line 6564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    .line 6565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor$InsertionPointCursorController;->hideImmediately()V

    .line 6567
    :cond_14
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->enterDrag(I)V

    .line 6568
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    .line 6569
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionModifierCursorController;->mHaventMovedEnoughToStartDrag:Z

    goto/16 :goto_6

    .line 6582
    .end local v12    # "offset":I
    .end local v15    # "touchSlop":I
    .end local v16    # "viewConfig":Landroid/view/ViewConfiguration;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isDragAcceleratorActive()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    const/4 v13, 0x1

    .line 6587
    .local v13, "selectionStarted":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v13, :cond_15

    .line 6588
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 6590
    :cond_15
    invoke-direct/range {p0 .. p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateSelection(Landroid/view/MotionEvent;)V

    .line 6593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 6596
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 6598
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->hasSelection()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 6599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get4(Landroid/widget/Editor;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 6600
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Editor;->startSelectionActionMode()Z

    goto/16 :goto_0

    .line 6586
    .end local v13    # "selectionStarted":Z
    :cond_16
    const/4 v13, 0x0

    .restart local v13    # "selectionStarted":Z
    goto :goto_7

    .line 6602
    :cond_17
    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 6604
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 6605
    .local v10, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v10, :cond_0

    .line 6606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_0

    .line 6470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 6807
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6808
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 6806
    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6769
    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    .line 6770
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetDragAcceleratorState()V

    .line 6768
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 6297
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-wrap9(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6298
    const-string/jumbo v0, "Editor"

    const-string/jumbo v1, "Popup didn\'t showed because Universal switch was enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6299
    return-void

    .line 6301
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get14(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6302
    return-void

    .line 6305
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    .line 6306
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    .line 6308
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->startShow()V

    .line 6295
    return-void
.end method
