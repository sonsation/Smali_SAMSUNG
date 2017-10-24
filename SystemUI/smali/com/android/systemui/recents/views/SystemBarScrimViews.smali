.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasDockedTasks:Z

.field private mHasNavBarScrim:Z

.field private mHasSoftNavBar:Z

.field private mHasTransposedNavBar:Z

.field private mLastVisible:Z

.field private mNavBarScrimEnterDuration:I

.field private mNavBarScrimView:Landroid/view/View;

.field private mShouldAnimateNavBarScrim:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/systemui/recents/RecentsActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mContext:Landroid/content/Context;

    .line 60
    const v0, 0x7f130343

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 62
    invoke-virtual {p1}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    const v1, 0x7f0c003d

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 64
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 71
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasSoftNavBar:Z

    .line 58
    return-void
.end method

.method private animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const/4 v4, 0x6

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "toY":I
    if-eqz p1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 109
    :goto_0
    sget-object v1, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    if-eq p2, v1, :cond_0

    .line 110
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mLastVisible:Z

    if-eqz v1, :cond_2

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 120
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mLastVisible:Z

    .line 101
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 112
    int-to-float v2, v0

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 113
    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 114
    invoke-virtual {p2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1
.end method

.method private animateScrimToCurrentNavBarState(Z)V
    .locals 3
    .param p1, "hasStackTasks"    # Z

    .prologue
    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v1

    .line 201
    .local v1, "hasNavBarScrim":Z
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eq v2, v1, :cond_0

    .line 202
    if-eqz v1, :cond_1

    .line 203
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 205
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 207
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 199
    return-void

    .line 204
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_0
.end method

.method private createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x6

    .line 214
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 214
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    return-object v0
.end method

.method private isNavBarScrimRequired(Z)Z
    .locals 1
    .param p1, "hasStackTasks"    # Z

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasTransposedNavBar:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasDockedTasks:Z

    if-nez v0, :cond_0

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasSoftNavBar:Z

    goto :goto_0
.end method

.method private prepareEnterRecentsAnimation(ZZ)V
    .locals 2
    .param p1, "hasNavBarScrim"    # Z
    .param p2, "animateNavBarScrim"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 92
    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    .line 94
    iget-object v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x4

    .line 94
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    .line 169
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasTransposedNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    .line 172
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->hasStackTasks:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 168
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    .line 153
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    .line 155
    const/16 v1, 0xc8

    .line 154
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 156
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 152
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    const/4 v3, 0x6

    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 141
    iget v2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimEnterDuration:I

    .line 140
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 140
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 144
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 137
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_0
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    const/4 v0, 0x0

    .line 181
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 175
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 161
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    if-eqz v1, :cond_0

    .line 163
    const/16 v1, 0xc8

    .line 162
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->createBoundsAnimation(I)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v0

    .line 164
    .local v0, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 160
    .end local v0    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 191
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    .line 186
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v0, v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateScrimToCurrentNavBarState(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public updateNavBarScrim(ZZLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 1
    .param p1, "animateNavBarScrim"    # Z
    .param p2, "hasStackTasks"    # Z
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 80
    invoke-direct {p0, p2}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->isNavBarScrimRequired(Z)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->prepareEnterRecentsAnimation(ZZ)V

    .line 81
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->animateNavBarScrimVisibility(ZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 79
    :cond_0
    return-void
.end method
