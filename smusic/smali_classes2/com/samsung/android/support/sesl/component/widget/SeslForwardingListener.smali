.class public abstract Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;
.super Ljava/lang/Object;
.source "SeslForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;,
        Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTmpLocation:[I

    .line 72
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->addDetachListenerApi12(Landroid/view/View;)V

    .line 81
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mScaledTouchSlop:F

    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTapTimeout:I

    .line 85
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mLongPressTimeout:I

    .line 86
    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->addDetachListenerBase(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onDetachedFromWindow()V

    return-void
.end method

.method private addDetachListenerApi12(Landroid/view/View;)V
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 89
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 98
    return-void
.end method

.method private addDetachListenerBase(Landroid/view/View;)V
    .locals 2
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    :cond_1
    return-void
.end method

.method private onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mForwarding:Z

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mActivePointerId:I

    .line 154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 157
    :cond_0
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 289
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    .line 290
    .local v6, "src":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;

    move-result-object v5

    .line 291
    .local v5, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v8

    .line 295
    :cond_1
    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;

    .line 296
    .local v1, "dst":Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isShown()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 301
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 302
    .local v2, "dstEvent":Landroid/view/MotionEvent;
    invoke-direct {p0, v6, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 303
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 306
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v2, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 307
    .local v3, "handled":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 311
    .local v0, "action":I
    if-eq v0, v7, :cond_2

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2

    move v4, v7

    .line 314
    .local v4, "keepForwarding":Z
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    .end local v4    # "keepForwarding":Z
    :cond_2
    move v4, v8

    .line 311
    goto :goto_1

    .restart local v4    # "keepForwarding":Z
    :cond_3
    move v7, v8

    .line 314
    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    .line 201
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v5

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 206
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mActivePointerId:I

    .line 210
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_2

    .line 211
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$DisallowIntercept;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 213
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    .line 216
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener$TriggerLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 218
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mLongPressTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 221
    :pswitch_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 222
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_0

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 224
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 227
    .local v4, "y":F
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mScaledTouchSlop:F

    invoke-static {v2, v3, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->clearCallbacks()V

    .line 231
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 232
    goto :goto_0

    .line 238
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->clearCallbacks()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 318
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 339
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTmpLocation:[I

    .line 340
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 341
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 342
    return v3
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mTmpLocation:[I

    .line 329
    .local v0, "loc":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 330
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v0, v3

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 331
    return v3
.end method


# virtual methods
.method public abstract getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;

    move-result-object v0

    .line 170
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->show()V

    .line 173
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->getPopup()Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;

    move-result-object v0

    .line 187
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslShowableListMenu;->dismiss()V

    .line 190
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method onLongPress()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->clearCallbacks()V

    .line 258
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    .line 259
    .local v9, "src":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 274
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 275
    .local v8, "e":Landroid/view/MotionEvent;
    invoke-virtual {v9, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 278
    iput-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mForwarding:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 129
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mForwarding:Z

    .line 131
    .local v10, "wasForwarding":Z
    if-eqz v10, :cond_5

    .line 132
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onForwardingStopped()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    move v9, v11

    .line 146
    .local v9, "forwarding":Z
    :cond_1
    :goto_0
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mForwarding:Z

    .line 147
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    move v7, v11

    :cond_3
    return v7

    .end local v9    # "forwarding":Z
    :cond_4
    move v9, v7

    .line 132
    goto :goto_0

    .line 134
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onForwardingStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    move v9, v11

    .line 136
    .restart local v9    # "forwarding":Z
    :goto_1
    if-eqz v9, :cond_1

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 139
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 141
    .local v8, "e":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .end local v0    # "now":J
    .end local v8    # "e":Landroid/view/MotionEvent;
    .end local v9    # "forwarding":Z
    :cond_6
    move v9, v7

    .line 134
    goto :goto_1
.end method
