.class public Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
.super Ljava/lang/Object;
.source "CheckBoxAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEBUG:Z = true

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBoxOffset:I

.field private mCheckBoxOuterSpace:I

.field private mCheckBoxWidth:I

.field private mIsAnimationRunning:Z

.field private final mLayoutDirection:I

.field private mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

.field private final mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxWidth:I

    .line 40
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mAnimatorListeners:Ljava/util/List;

    .line 48
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mLayoutDirection:I

    .line 58
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->list_item_checkbox_outer_space_winset:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOuterSpace:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->startShowCheckBoxAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxWidth(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->invokeAnimationEndListener(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mIsAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    .prologue
    .line 26
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mLayoutDirection:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->startHideCheckBoxAnimation(Landroid/view/View;)V

    return-void
.end method

.method private getCheckBoxOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 12
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 391
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 392
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v1

    .line 393
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 394
    .local v6, "outerSpaceStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 395
    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 396
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 397
    .local v4, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 398
    sget v7, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_item_outer_space_start:I

    .line 399
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 400
    .local v3, "guideLineOuterSpaceStart":Landroid/view/View;
    if-nez v3, :cond_3

    .line 407
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "guideLineOuterSpaceStart":Landroid/view/View;
    .end local v4    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxWidth(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v0

    .line 408
    .local v0, "checkBoxWidth":I
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mLayoutDirection:I

    if-nez v7, :cond_5

    .line 409
    neg-int v7, v0

    add-int/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    .line 414
    .end local v0    # "checkBoxWidth":I
    .end local v1    # "childCount":I
    .end local v5    # "i":I
    .end local v6    # "outerSpaceStart":I
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    if-eqz v7, :cond_2

    .line 415
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-interface {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;->onResult(I)V

    .line 416
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .line 418
    :cond_2
    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    return v7

    .line 403
    .restart local v1    # "childCount":I
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v3    # "guideLineOuterSpaceStart":Landroid/view/View;
    .restart local v4    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v5    # "i":I
    .restart local v6    # "outerSpaceStart":I
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    .line 394
    .end local v3    # "guideLineOuterSpaceStart":Landroid/view/View;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "childView":Landroid/view/View;
    .end local v4    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v0    # "checkBoxWidth":I
    :cond_5
    sub-int v7, v0, v6

    iput v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    goto :goto_1
.end method

.method private getCheckBoxWidth(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I
    .locals 11
    .param p1, "recyclerView"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    const/4 v10, 0x0

    .line 367
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxWidth:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 368
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v1

    .line 369
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 370
    invoke-virtual {p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v3

    .line 372
    .local v3, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 373
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 374
    .local v0, "checkBoxStub":Landroid/view/View;
    instance-of v6, v0, Landroid/view/ViewStub;

    if-eqz v6, :cond_0

    .line 375
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "checkBoxStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 377
    :cond_0
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 378
    .local v5, "sampleCheckBox":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 379
    invoke-virtual {v5, v10, v10}, Landroid/view/View;->measure(II)V

    .line 381
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOuterSpace:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxWidth:I

    .line 387
    .end local v1    # "childCount":I
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .end local v4    # "i":I
    .end local v5    # "sampleCheckBox":Landroid/view/View;
    :cond_1
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxWidth:I

    return v6

    .line 369
    .restart local v1    # "childCount":I
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v3    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private invokeAnimationEndListener(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 440
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 441
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 443
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method private invokeAnimationStartListener(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 435
    .local v0, "listener":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 437
    .end local v0    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_0
    return-void
.end method

.method private startHideCheckBoxAnimation(Landroid/view/View;)V
    .locals 26
    .param p1, "selectAllRoot"    # Landroid/view/View;

    .prologue
    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxWidth(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v19

    .line 239
    .local v19, "checkBoxWidth":I
    const/16 v25, 0x0

    .line 240
    .local v25, "initValue":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 242
    .local v22, "endValue":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 243
    .local v18, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 247
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 249
    .local v6, "translationEnabled":Z
    :goto_0
    if-eqz p1, :cond_0

    .line 250
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_container:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 251
    .local v4, "container":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v7

    .line 252
    .local v7, "layerType":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mLayoutDirection:I

    if-nez v2, :cond_2

    move/from16 v0, v19

    neg-int v5, v0

    .line 254
    .local v5, "offset":I
    :goto_1
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$6;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;IZI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "offset":I
    .end local v7    # "layerType":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v20

    .line 276
    .local v20, "childCount":I
    if-nez v20, :cond_3

    .line 364
    :goto_2
    return-void

    .line 247
    .end local v6    # "translationEnabled":Z
    .end local v20    # "childCount":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v4    # "container":Landroid/view/View;
    .restart local v6    # "translationEnabled":Z
    .restart local v7    # "layerType":I
    :cond_2
    move/from16 v5, v19

    .line 252
    goto :goto_1

    .line 280
    .end local v4    # "container":Landroid/view/View;
    .end local v7    # "layerType":I
    .restart local v20    # "childCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v5

    .line 281
    .restart local v5    # "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isGoToTopEnabled()Z

    move-result v17

    .line 282
    .local v17, "wasGoTopEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->enableGoToTop(Z)V

    .line 283
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 285
    .local v21, "childView":Landroid/view/View;
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 287
    .local v10, "checkBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 289
    .local v23, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 290
    .local v11, "animateViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    .line 292
    .local v15, "animateViewLayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v2, v20, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_6

    const/16 v16, 0x1

    .line 293
    .local v16, "isLastChild":Z
    :goto_4
    if-eqz v10, :cond_4

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-gez v2, :cond_7

    .line 294
    :cond_4
    if-eqz v16, :cond_5

    .line 295
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$7;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    :cond_5
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 292
    .end local v16    # "isLastChild":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 311
    .restart local v16    # "isLastChild":Z
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mIsAnimationRunning:Z

    .line 312
    invoke-virtual {v10}, Landroid/widget/CheckBox;->getLayerType()I

    move-result v7

    .line 313
    .restart local v7    # "layerType":I
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 314
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;

    move-object/from16 v9, p0

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$8;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/widget/CheckBox;Ljava/util/List;IZILjava/util/List;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    .line 362
    .end local v7    # "layerType":I
    .end local v10    # "checkBox":Landroid/widget/CheckBox;
    .end local v11    # "animateViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v15    # "animateViewLayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "isLastChild":Z
    .end local v21    # "childView":Landroid/view/View;
    .end local v23    # "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->invokeAnimationStartListener(Landroid/animation/Animator;)V

    .line 363
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    .line 242
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowCheckBoxAnimation(Landroid/view/View;)V
    .locals 25
    .param p1, "selectAllRoot"    # Landroid/view/View;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxWidth(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v17

    .line 111
    .local v17, "checkBoxWidth":I
    const/16 v24, 0x1

    .line 112
    .local v24, "initValue":I
    const/16 v21, 0x0

    .line 114
    .local v21, "endValue":I
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v18

    .line 115
    .local v18, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 119
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager;

    if-nez v2, :cond_1

    const/4 v6, 0x1

    .line 121
    .local v6, "translationEnabled":Z
    :goto_0
    if-eqz p1, :cond_0

    .line 122
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox_container:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 123
    .local v4, "container":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayerType()I

    move-result v7

    .line 124
    .local v7, "layerType":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mLayoutDirection:I

    if-nez v2, :cond_2

    move/from16 v0, v17

    neg-int v5, v0

    .line 126
    .local v5, "offset":I
    :goto_1
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;IZI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 147
    .end local v4    # "container":Landroid/view/View;
    .end local v5    # "offset":I
    .end local v7    # "layerType":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v19

    .line 148
    .local v19, "childCount":I
    if-nez v19, :cond_3

    .line 223
    :goto_2
    return-void

    .line 119
    .end local v6    # "translationEnabled":Z
    .end local v19    # "childCount":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .restart local v4    # "container":Landroid/view/View;
    .restart local v6    # "translationEnabled":Z
    .restart local v7    # "layerType":I
    :cond_2
    move/from16 v5, v17

    .line 124
    goto :goto_1

    .line 152
    .end local v4    # "container":Landroid/view/View;
    .end local v7    # "layerType":I
    .restart local v19    # "childCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->getCheckBoxOffset(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)I

    move-result v5

    .line 153
    .restart local v5    # "offset":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 155
    .local v20, "childView":Landroid/view/View;
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 157
    .local v10, "checkBox":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 158
    .local v22, "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViews:Ljava/util/List;

    .line 159
    .local v11, "animateViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->animateViewLayers:Ljava/util/List;

    .line 161
    .local v15, "animateViewLayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_6

    const/16 v16, 0x1

    .line 162
    .local v16, "isLastChild":Z
    :goto_4
    if-eqz v10, :cond_4

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->getItemId()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-gez v2, :cond_7

    .line 163
    :cond_4
    if-eqz v16, :cond_5

    .line 164
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    :cond_5
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 161
    .end local v16    # "isLastChild":Z
    :cond_6
    const/16 v16, 0x0

    goto :goto_4

    .line 179
    .restart local v16    # "isLastChild":Z
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mIsAnimationRunning:Z

    .line 180
    invoke-virtual {v10}, Landroid/view/View;->getLayerType()I

    move-result v7

    .line 181
    .restart local v7    # "layerType":I
    new-instance v8, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$4;

    move-object/from16 v9, p0

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v17}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;Ljava/util/List;IZILjava/util/List;ZI)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5

    .line 221
    .end local v7    # "layerType":I
    .end local v10    # "checkBox":Landroid/view/View;
    .end local v11    # "animateViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v15    # "animateViewLayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "isLastChild":Z
    .end local v20    # "childView":Landroid/view/View;
    .end local v22    # "holder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->invokeAnimationStartListener(Landroid/animation/Animator;)V

    .line 222
    invoke-virtual/range {v18 .. v18}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    .line 114
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method

.method public getCheckBoxOffsetAsync(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .line 423
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mCheckBoxOffset:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;->onResult(I)V

    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mOnGetCheckBoxOffsetListener:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;

    .line 427
    :cond_0
    return-void
.end method

.method public hideCheckBox(Landroid/view/View;)V
    .locals 2
    .param p1, "selectAllRoot"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 234
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mIsAnimationRunning:Z

    return v0
.end method

.method public removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public showCheckBox(Landroid/view/View;Z)V
    .locals 10
    .param p1, "selectAllRoot"    # Landroid/view/View;
    .param p2, "animation"    # Z

    .prologue
    .line 63
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v2

    .line 64
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 65
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, "childView":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;

    move-result-object v4

    .line 67
    .local v4, "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 64
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    :cond_0
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "checkBoxStub":Landroid/view/View;
    instance-of v6, v1, Landroid/view/ViewStub;

    if-eqz v6, :cond_1

    .line 72
    check-cast v1, Landroid/view/ViewStub;

    .end local v1    # "checkBoxStub":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 74
    :cond_1
    sget v6, Lcom/samsung/android/app/musiclibrary/R$id;->checkbox:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "checkBox":Landroid/view/View;
    if-nez v0, :cond_2

    .line 77
    const-string v6, "UiList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showCheckBox() - childView "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no checkBox - childView: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 84
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 87
    .end local v0    # "checkBox":Landroid/view/View;
    .end local v3    # "childView":Landroid/view/View;
    .end local v4    # "holder":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$1;

    invoke-direct {v7, p0, v2, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;IZLandroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    .line 107
    return-void
.end method
