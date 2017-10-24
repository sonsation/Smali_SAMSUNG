.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"


# instance fields
.field private mCaption:Landroid/view/View;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDragSlop:I

.field private mDragging:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLeftMouseButtonReleased:Z

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field public mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mShow:Z

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 128
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    .line 118
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    .line 133
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    .line 138
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 141
    new-instance v0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-direct {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    .line 136
    return-void
.end method

.method private isFillingScreen()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 451
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 452
    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xa05

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private maximizeWindow()V
    .locals 4

    .prologue
    .line 474
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    .line 475
    .local v0, "callback":Landroid/view/Window$WindowControllerCallback;
    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "Cannot change task workspace."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private passedSlop(II)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 329
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->hasClickTarget()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 334
    :cond_2
    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v2, v3, :cond_4

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private updateCaptionVisibility()V
    .locals 3

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFillingScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 466
    .local v0, "invisible":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 463
    return-void

    .line 465
    .end local v0    # "invisible":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "invisible":Z
    goto :goto_0

    .line 466
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x2

    .line 359
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    if-ge p2, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 370
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->setContentView(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 526
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 515
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 510
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 521
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCaptionShowing()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method isOverlayWithAppContent()Z
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    return v0
.end method

.method public onConfigurationChanged(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 343
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 346
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->clearMaximizeRequested()V

    .line 341
    :cond_0
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->setCaptionView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 571
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 201
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_0

    .line 202
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v2, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 208
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 210
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 211
    .local v1, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 214
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 218
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 415
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onLayout(ZIIII)V

    .line 413
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v6, v0, v1

    .line 423
    .local v6, "captionHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 432
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 440
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 441
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 440
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Window;->notifyRestrictedCaptionAreaCallback(IIII)V

    goto :goto_0

    .line 426
    .end local v6    # "captionHeight":I
    :cond_2
    const/4 v6, 0x0

    .line 427
    .restart local v6    # "captionHeight":I
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 428
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 436
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v6

    .line 435
    invoke-virtual {v0, v3, v6, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 563
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onLongPress(Landroid/view/MotionEvent;)V

    .line 561
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 388
    .local v5, "captionHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 389
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_2

    .line 390
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 408
    .end local v5    # "captionHeight":I
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 409
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 408
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 380
    return-void

    .line 386
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "captionHeight":I
    goto :goto_0

    .line 392
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 535
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 542
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-ne v0, v1, :cond_2

    .line 548
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    .line 552
    :cond_1
    :goto_0
    return v2

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-ne v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v2}, Landroid/view/Window;->dispatchOnWindowDismissed(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 247
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 250
    .local v2, "y":I
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_1

    .line 251
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 253
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v4}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v3}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->isFullScreenFreeform()Z

    move-result v3

    return v3

    .line 257
    :cond_0
    return v3

    .line 263
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 312
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v3, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    :cond_3
    return v4

    .line 265
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v5, :cond_4

    .line 267
    return v3

    .line 271
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 273
    :cond_5
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 274
    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    .line 275
    iput v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    goto :goto_0

    .line 280
    :pswitch_1
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 281
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    .line 282
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 283
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    .line 285
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    invoke-virtual {p0, v3, v5}, Landroid/view/View;->startMovingTask(FF)Z

    move-result v0

    .line 288
    .local v0, "movingTask":Z
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 289
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v3, v4}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->notifyMovingTask(Z)V

    goto :goto_0

    .line 292
    .end local v0    # "movingTask":Z
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    if-nez v3, :cond_2

    .line 293
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 294
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 297
    iput-boolean v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mLeftMouseButtonReleased:Z

    goto :goto_0

    .line 305
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-eqz v5, :cond_2

    .line 309
    iput-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    .line 310
    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v5, :cond_7

    :goto_1
    return v3

    :cond_7
    move v3, v4

    goto :goto_1

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 224
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/DecorCaptionView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v1, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, "action":I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 234
    :cond_1
    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    .line 236
    :cond_2
    return v2

    .line 238
    .end local v0    # "action":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public removeContentView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 495
    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->removeContentView()V

    .line 492
    return-void
.end method

.method setOverlayWithAppContent(Z)V
    .locals 0
    .param p1, "isOverlayWithAppContent"    # Z

    .prologue
    .line 577
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 575
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 3
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 159
    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 160
    invoke-virtual {p1}, Landroid/view/Window;->isOverlayWithDecorCaptionEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;)V

    .line 173
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowSupportBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;

    invoke-virtual {v1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 185
    sget v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    .line 186
    sget v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    .line 157
    return-void
.end method

.method updateCaptionShowing(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    .line 585
    return-void
.end method
