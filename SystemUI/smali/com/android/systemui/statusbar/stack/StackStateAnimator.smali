.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mChildrenToClearFromOverlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mGoToFullShadeAppearingTranslation:I

.field private final mGoToFullShadeAppearingTranslationForBottomBar:I

.field private mHeadsUpAppearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpAppearHeightBottom:I

.field private final mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mHeadsUpDisappearChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mShadeExpanded:Z

.field private final mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    .line 89
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 105
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 106
    const v1, 0x7f0d02db

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 104
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x7f0d03fd

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 109
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslationForBottomBar:I

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 102
    return-void
.end method

.method private abortAnimation(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animatorTag"    # I

    .prologue
    .line 345
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 346
    .local v0, "previousAnimator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 344
    :cond_0
    return-void
.end method

.method private applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z
    .locals 2
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    if-eqz v0, :cond_0

    .line 160
    return v1

    .line 162
    :cond_0
    const v0, 0x7f130021

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 164
    return v1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :cond_2
    return v1

    .line 170
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    return v1

    .line 174
    :cond_4
    invoke-virtual {p3, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 20
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 354
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackViewState;)J

    move-result-wide v16

    return-wide v16

    .line 356
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 357
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackViewState;)J

    move-result-wide v16

    return-wide v16

    .line 359
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasHeadsUpDisappearClickEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 360
    const-wide/16 v16, 0x78

    return-wide v16

    .line 362
    :cond_2
    const-wide/16 v10, 0x0

    .line 363
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 364
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v6, 0x50

    .line 365
    .local v6, "delayPerElement":J
    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 367
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 369
    .local v14, "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 368
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 370
    .local v2, "changingIndex":I
    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 372
    .local v3, "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 371
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 373
    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 364
    const-wide/16 v18, 0x50

    .line 373
    mul-long v4, v16, v18

    .line 374
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_0

    .line 378
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v14    # "ownIndex":I
    :pswitch_1
    const-wide/16 v6, 0x20

    .line 380
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 381
    .restart local v14    # "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v13, 0x1

    .line 382
    .local v13, "noNextView":Z
    :goto_1
    if-eqz v13, :cond_5

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    .line 386
    .local v15, "viewAfterChangingView":Landroid/view/View;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 388
    .local v12, "nextIndex":I
    if-lt v14, v12, :cond_3

    .line 390
    add-int/lit8 v14, v14, 0x1

    .line 392
    :cond_3
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 394
    .restart local v3    # "difference":I
    add-int/lit8 v16, v3, -0x1

    .line 393
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 395
    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 396
    .restart local v4    # "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto/16 :goto_0

    .line 381
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "nextIndex":I
    .end local v13    # "noNextView":Z
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 384
    .restart local v13    # "noNextView":Z
    :cond_5
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_2

    .line 403
    .end local v6    # "delayPerElement":J
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    .end local v13    # "noNextView":Z
    .end local v14    # "ownIndex":I
    :cond_6
    return-wide v10

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackViewState;)J
    .locals 4
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 409
    const/4 v2, -0x1

    .line 408
    if-ne v1, v2, :cond_0

    .line 410
    const/4 v0, 0x0

    .line 417
    .local v0, "referenceIndex":I
    :goto_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    return-wide v2

    .line 411
    .end local v0    # "referenceIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 412
    const/4 v2, -0x2

    .line 411
    if-ne v1, v2, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "referenceIndex":I
    goto :goto_0

    .line 415
    .end local v0    # "referenceIndex":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v0, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .restart local v0    # "referenceIndex":I
    goto :goto_0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackViewState;)J
    .locals 6
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    .line 421
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 422
    .local v0, "index":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 423
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 7
    .param p1, "duration"    # J
    .param p3, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 862
    move-wide v0, p1

    .line 863
    .local v0, "newDuration":J
    if-eqz p3, :cond_0

    .line 866
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 867
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 866
    sub-long/2addr v2, v4

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 868
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 870
    :cond_0
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 10
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 179
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 180
    .local v1, "childCount":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 181
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 183
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v7

    .line 184
    .local v7, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 180
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 190
    instance-of v8, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v8, :cond_3

    move-object v3, v0

    .line 191
    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 192
    .local v3, "enr":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 193
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 194
    .local v4, "groupChildCount":I
    add-int/lit8 v6, v4, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_3

    .line 195
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 196
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-nez v2, :cond_2

    .line 194
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 199
    :cond_2
    iget v8, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    return v8

    .line 204
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v3    # "enr":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v4    # "groupChildCount":I
    .end local v6    # "j":I
    :cond_3
    iget v8, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    return v8

    .line 207
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v7    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_4
    const/4 v8, -0x1

    return v8
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 1045
    if-nez p0, :cond_0

    .line 1046
    const/4 v1, 0x0

    return v1

    .line 1048
    :cond_0
    const v1, 0x7f130025

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1049
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 1050
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    return v1

    .line 1052
    :cond_1
    const v1, 0x7f13002b

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1061
    if-nez p0, :cond_0

    .line 1062
    const/4 v1, 0x0

    return v1

    .line 1064
    :cond_0
    const v1, 0x7f130021

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 1065
    .local v0, "yAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    return v1

    .line 1068
    :cond_1
    const v1, 0x7f130027

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    return-object v0

    .line 826
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    return-object v0
.end method

.method private onAnimationFinished()V
    .locals 3

    .prologue
    .line 874
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 875
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 876
    .local v0, "v":Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 878
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 873
    return-void
.end method

.method private processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 13
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 890
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 891
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v2, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 892
    .local v2, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v1, :cond_2

    .line 896
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 898
    .local v12, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v12, :cond_0

    .line 902
    invoke-virtual {p2, v2, v12}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    .line 903
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 905
    :cond_2
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 906
    const/4 v3, 0x1

    .line 905
    if-ne v1, v3, :cond_5

    .line 907
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 908
    invoke-static {v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->removeFromOverlay(Landroid/view/View;)V

    goto :goto_0

    .line 915
    :cond_3
    iget-object v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    .line 914
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 916
    .restart local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 918
    .local v0, "actualHeight":I
    const/high16 v11, -0x40800000    # -1.0f

    .line 919
    .local v11, "translationDirection":F
    if-eqz v12, :cond_4

    .line 922
    iget v1, v12, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 923
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v3

    int-to-float v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 922
    sub-float/2addr v1, v3

    .line 923
    const/high16 v3, 0x40000000    # 2.0f

    .line 922
    mul-float/2addr v1, v3

    .line 924
    int-to-float v3, v0

    .line 922
    div-float v11, v1, v3

    .line 925
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 928
    :cond_4
    const-wide/16 v4, 0x1d0

    .line 929
    new-instance v1, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 928
    invoke-virtual {v2, v4, v5, v11, v1}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    .line 936
    .end local v0    # "actualHeight":I
    .end local v11    # "translationDirection":F
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_5
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 937
    const/4 v3, 0x2

    .line 936
    if-ne v1, v3, :cond_6

    .line 940
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 941
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    .line 942
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 943
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    goto :goto_1

    .line 945
    :cond_6
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xd

    if-ne v1, v3, :cond_7

    .line 947
    iget-object v10, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 948
    .local v10, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v10, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    goto/16 :goto_1

    .line 949
    .end local v10    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_7
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_9

    .line 952
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v12

    .line 953
    .restart local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v1, v12}, Lcom/android/systemui/statusbar/stack/StackViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 954
    iget-boolean v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->headsUpFromBottom:Z

    if-eqz v1, :cond_8

    .line 955
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 959
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {p2, v2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    goto/16 :goto_1

    .line 957
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    iget v3, v3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    goto :goto_2

    .line 961
    .end local v12    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_9
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_a

    .line 963
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_1

    .line 965
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 969
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackViewState;->initFrom(Landroid/view/View;)V

    .line 970
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 973
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 974
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTmpState:Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 975
    iget v1, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0x10

    if-ne v1, v4, :cond_b

    .line 977
    const/16 v1, 0x78

    .line 975
    :goto_3
    int-to-long v4, v1

    .line 979
    const-wide/16 v6, 0xe6

    move-object v1, p0

    .line 974
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 980
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mChildrenToClearFromOverlay:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 978
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    .line 889
    .end local v2    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v8    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_c
    return-void
.end method

.method public static removeFromOverlay(Landroid/view/View;)V
    .locals 1
    .param p0, "changingView"    # Landroid/view/View;

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 990
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 988
    :cond_0
    return-void
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 624
    const v14, 0x7f13002f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 625
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f130029

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 626
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 627
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    const v14, 0x7f130023

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 631
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_2

    .line 633
    if-eqz v9, :cond_1

    .line 636
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 637
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 638
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 639
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 640
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f13002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 641
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f130029

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 642
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 643
    return-void

    .line 646
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 647
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 648
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 653
    :cond_2
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 654
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 653
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 655
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 657
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 658
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 683
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 684
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 685
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 686
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 687
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 689
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 692
    const v14, 0x7f130023

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 693
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f13002f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 694
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f130029

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 623
    return-void
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 811
    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 487
    const v12, 0x7f130031

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 488
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f13002b

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 489
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 490
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    const v12, 0x7f130025

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 494
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_2

    .line 496
    if-eqz v7, :cond_1

    .line 499
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 500
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 501
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 502
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 503
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f130031

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 504
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f13002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 505
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 506
    return-void

    .line 509
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 510
    return-void

    .line 514
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 515
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 523
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 524
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 525
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    .line 526
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    .line 527
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 529
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 556
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 557
    const v12, 0x7f130025

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f130031

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 559
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f13002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 560
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeightAnimating(Z)V

    .line 486
    return-void
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 565
    const v12, 0x7f130030

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 566
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f13002a

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 567
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 568
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 569
    return-void

    .line 571
    :cond_0
    const v12, 0x7f130024

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 572
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_2

    .line 574
    if-eqz v7, :cond_1

    .line 577
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 578
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 579
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 580
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 581
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f130030

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 582
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f13002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 583
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 584
    return-void

    .line 587
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 588
    return-void

    .line 592
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 593
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 599
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 600
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 601
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 602
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    .line 603
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    .line 604
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 606
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 616
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 617
    const v12, 0x7f130024

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f130030

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 619
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v13, 0x7f13002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 564
    return-void
.end method

.method private startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 428
    const v12, 0x7f130032

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    .line 429
    .local v9, "previousStartValue":Ljava/lang/Float;
    const v12, 0x7f13002c

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 430
    .local v8, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 431
    .local v3, "newEndValue":F
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    cmpl-float v12, v12, v3

    if-nez v12, :cond_0

    .line 432
    return-void

    .line 434
    :cond_0
    const v12, 0x7f130026

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 435
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha:Z

    if-nez v12, :cond_2

    .line 437
    if-eqz v7, :cond_1

    .line 440
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 441
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    sub-float v10, v3, v12

    .line 442
    .local v10, "relativeDiff":F
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v12

    add-float v6, v12, v10

    .line 443
    .local v6, "newStartValue":F
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 444
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f130032

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 445
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f13002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 446
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 447
    return-void

    .line 450
    .end local v6    # "newStartValue":F
    .end local v10    # "relativeDiff":F
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setShadowAlpha(F)V

    .line 451
    return-void

    .line 455
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v13

    const/4 v14, 0x0

    aput v13, v12, v14

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 456
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 462
    sget-object v12, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 464
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 465
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    .line 466
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_4

    .line 467
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 469
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 471
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 479
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 480
    const v12, 0x7f130026

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 481
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f130032

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 482
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const v13, 0x7f13002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 427
    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .locals 21
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 752
    const v16, 0x7f13002d

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 753
    .local v13, "previousStartValue":Ljava/lang/Float;
    const v16, 0x7f130027

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 754
    .local v12, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 755
    .local v7, "newEndValue":F
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_0

    .line 756
    return-void

    .line 758
    :cond_0
    const v16, 0x7f130021

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 759
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 761
    if-eqz v11, :cond_1

    .line 764
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 765
    .local v15, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    .line 766
    .local v14, "relativeDiff":F
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    .line 767
    .local v10, "newStartValue":F
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 768
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f13002d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 769
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f130027

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 770
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 771
    return-void

    .line 774
    .end local v10    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v15    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 775
    return-void

    .line 779
    :cond_2
    sget-object v16, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 780
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v18

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v7, v17, v18

    .line 779
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 781
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 783
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    :goto_0
    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 784
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 785
    .local v8, "newDuration":J
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 786
    const-wide/16 v16, 0x0

    cmp-long v16, p5, v16

    if-lez v16, :cond_4

    if-eqz v11, :cond_3

    .line 787
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-nez v16, :cond_4

    .line 788
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 790
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 793
    .local v6, "isHeadsUpDisappear":Z
    new-instance v16, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 805
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 806
    const v16, 0x7f130021

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationY()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f13002d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 808
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const v17, 0x7f130027

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 751
    return-void

    .line 782
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v6    # "isHeadsUpDisappear":Z
    .end local v8    # "newDuration":J
    :cond_5
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 699
    const v14, 0x7f13002e

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 700
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f130028

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 701
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    .line 702
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 703
    return-void

    .line 705
    :cond_0
    const v14, 0x7f130022

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 706
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    .line 708
    if-eqz v9, :cond_1

    .line 711
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 712
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 713
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 714
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 715
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f13002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 716
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f130028

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 717
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    .line 718
    return-void

    .line 721
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationZ(F)V

    .line 725
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    .line 726
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v16

    const/16 v17, 0x0

    aput v16, v15, v17

    const/16 v16, 0x1

    aput v5, v15, v16

    .line 725
    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 727
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    sget-object v14, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 729
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 730
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    .line 731
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_4

    .line 732
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 734
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 744
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 745
    const v14, 0x7f130022

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTranslationZ()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f13002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 747
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const v15, 0x7f130028

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 698
    return-void
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 997
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 998
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 1002
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 1003
    const/4 v3, 0x1

    aput p1, v2, v3

    .line 1002
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1004
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1005
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1014
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1015
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1025
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1026
    if-eqz p2, :cond_1

    .line 1027
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 996
    :goto_0
    return-void

    .line 1029
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 1034
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 1035
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1033
    :cond_0
    return-void

    .line 1034
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHeadsUpAppearHeightBottom(I)V
    .locals 0
    .param p1, "headsUpAppearHeightBottom"    # I

    .prologue
    .line 1073
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearHeightBottom:I

    .line 1072
    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0
    .param p1, "shadeExpanded"    # Z

    .prologue
    .line 1077
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mShadeExpanded:Z

    .line 1076
    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 9
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    .line 127
    .local v0, "childCount":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 128
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 130
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 131
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 134
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v3

    .line 135
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    .line 131
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->applyWithoutAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)Z

    move-result v1

    .line 135
    if-nez v1, :cond_0

    .line 140
    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V

    goto :goto_1

    .line 142
    .end local v2    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpAppearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHeadsUpDisappearChildren:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method public startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V
    .locals 29
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "i"    # I
    .param p5, "fixedDelay"    # J

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    .line 224
    .local v26, "wasAdded":Z
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 225
    .local v10, "duration":J
    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v6, :cond_0

    .line 226
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    if-eqz v6, :cond_4

    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslationForBottomBar:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 231
    :goto_0
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v6, v7

    int-to-float v0, v6

    move/from16 v23, v0

    .line 232
    .local v23, "longerDurationFactor":F
    move/from16 v0, v23

    float-to-double v6, v0

    const-wide v14, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v23, v0

    .line 234
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v6, v6, v23

    float-to-long v6, v6

    .line 233
    const-wide/16 v14, 0x202

    add-long v10, v14, v6

    .line 236
    .end local v23    # "longerDurationFactor":F
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    const/16 v27, 0x1

    .line 237
    .local v27, "yTranslationChanging":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    const/16 v28, 0x1

    .line 238
    .local v28, "zTranslationChanging":Z
    :goto_2
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_7

    const/4 v4, 0x1

    .line 239
    .local v4, "alphaChanging":Z
    :goto_3
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v7

    if-eq v6, v7, :cond_8

    const/16 v21, 0x1

    .line 240
    .local v21, "heightChanging":Z
    :goto_4
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getShadowAlpha()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9

    const/16 v24, 0x1

    .line 241
    .local v24, "shadowAlphaChanging":Z
    :goto_5
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v7

    if-eq v6, v7, :cond_a

    const/4 v12, 0x1

    .line 242
    .local v12, "darkChanging":Z
    :goto_6
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v7

    if-eq v6, v7, :cond_b

    const/16 v25, 0x1

    .line 243
    .local v25, "topInsetChanging":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v6, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v20, v0

    .line 244
    .local v20, "hasDelays":Z
    if-nez v27, :cond_c

    if-nez v28, :cond_c

    if-nez v4, :cond_c

    if-nez v21, :cond_c

    if-nez v25, :cond_c

    if-nez v12, :cond_c

    .line 245
    move/from16 v22, v24

    .line 246
    :goto_8
    const-wide/16 v8, 0x0

    .line 247
    .local v8, "delay":J
    const-wide/16 v6, -0x1

    cmp-long v6, p5, v6

    if-eqz v6, :cond_d

    .line 248
    move-wide/from16 v8, p5

    :cond_1
    :goto_9
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 253
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 256
    if-eqz v21, :cond_10

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 257
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 263
    :goto_a
    if-eqz v24, :cond_11

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 264
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startShadowAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 270
    :goto_b
    if-eqz v25, :cond_12

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    .line 271
    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;JJ)V

    .line 277
    :goto_c
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 280
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 283
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 287
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 289
    if-eqz v26, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 292
    :cond_2
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_3

    move-object/from16 v5, p1

    .line 293
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v6, p3

    move-object/from16 v7, p0

    .line 294
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V

    .line 222
    .end local v5    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    return-void

    .line 229
    .end local v4    # "alphaChanging":Z
    .end local v8    # "delay":J
    .end local v12    # "darkChanging":Z
    .end local v20    # "hasDelays":Z
    .end local v21    # "heightChanging":Z
    .end local v24    # "shadowAlphaChanging":Z
    .end local v25    # "topInsetChanging":Z
    .end local v27    # "yTranslationChanging":Z
    .end local v28    # "zTranslationChanging":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    goto/16 :goto_0

    .line 236
    :cond_5
    const/16 v27, 0x0

    .restart local v27    # "yTranslationChanging":Z
    goto/16 :goto_1

    .line 237
    :cond_6
    const/16 v28, 0x0

    .restart local v28    # "zTranslationChanging":Z
    goto/16 :goto_2

    .line 238
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "alphaChanging":Z
    goto/16 :goto_3

    .line 239
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "heightChanging":Z
    goto/16 :goto_4

    .line 240
    :cond_9
    const/16 v24, 0x0

    .restart local v24    # "shadowAlphaChanging":Z
    goto/16 :goto_5

    .line 241
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "darkChanging":Z
    goto/16 :goto_6

    .line 242
    :cond_b
    const/16 v25, 0x0

    .restart local v25    # "topInsetChanging":Z
    goto/16 :goto_7

    .line 244
    .restart local v20    # "hasDelays":Z
    :cond_c
    const/16 v22, 0x1

    .local v22, "isDelayRelevant":Z
    goto/16 :goto_8

    .line 249
    .end local v22    # "isDelayRelevant":Z
    .restart local v8    # "delay":J
    :cond_d
    if-eqz v20, :cond_e

    if-nez v22, :cond_f

    :cond_e
    if-eqz v26, :cond_1

    .line 250
    :cond_f
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v14

    add-long v8, v6, v14

    goto/16 :goto_9

    .line 259
    :cond_10
    const v6, 0x7f130025

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_a

    .line 266
    :cond_11
    const v6, 0x7f130026

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 273
    :cond_12
    const v6, 0x7f130024

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto/16 :goto_c
.end method

.method public startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V
    .locals 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v10, 0x1

    .line 308
    .local v10, "wasVisible":Z
    :goto_0
    iget v0, p2, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 309
    .local v0, "alpha":F
    if-nez v10, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->gone:Z

    if-eqz v1, :cond_4

    .line 313
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget v2, p2, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    const/4 v11, 0x1

    .line 314
    .local v11, "yTranslationChanging":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    iget v2, p2, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    const/4 v12, 0x1

    .line 315
    .local v12, "zTranslationChanging":Z
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v9

    .line 316
    .local v9, "childAlpha":F
    iget v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_7

    const/4 v8, 0x1

    .line 317
    .local v8, "alphaChanging":Z
    :goto_4
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 319
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->willBeGone()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_5
    and-int/2addr v8, v1

    .line 323
    .end local v8    # "alphaChanging":Z
    :cond_2
    if-eqz v11, :cond_9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 324
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 330
    :goto_6
    if-eqz v12, :cond_a

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 331
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 337
    :goto_7
    if-eqz v8, :cond_b

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_b

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p5

    move-wide/from16 v6, p3

    .line 338
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 306
    :goto_8
    return-void

    .line 307
    .end local v0    # "alpha":F
    .end local v9    # "childAlpha":F
    .end local v10    # "wasVisible":Z
    .end local v11    # "yTranslationChanging":Z
    .end local v12    # "zTranslationChanging":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "wasVisible":Z
    goto :goto_0

    .line 310
    .restart local v0    # "alpha":F
    :cond_4
    iget-boolean v1, p2, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    if-nez v1, :cond_1

    .line 311
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 313
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "yTranslationChanging":Z
    goto :goto_2

    .line 314
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "zTranslationChanging":Z
    goto :goto_3

    .line 316
    .restart local v9    # "childAlpha":F
    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "alphaChanging":Z
    goto :goto_4

    .line 319
    :cond_8
    const/4 v1, 0x1

    goto :goto_5

    .line 326
    .end local v8    # "alphaChanging":Z
    :cond_9
    const v1, 0x7f130021

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_6

    .line 333
    :cond_a
    const v1, 0x7f130022

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_7

    .line 340
    :cond_b
    const v1, 0x7f130023

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->abortAnimation(Landroid/view/View;I)V

    goto :goto_8
.end method
