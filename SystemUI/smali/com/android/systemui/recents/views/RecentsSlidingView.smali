.class public Lcom/android/systemui/recents/views/RecentsSlidingView;
.super Landroid/widget/FrameLayout;
.source "RecentsSlidingView.java"


# static fields
.field private static mToggleAnimationTranslationY:I


# instance fields
.field mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

.field mAppListViewContainer:Landroid/view/View;

.field mCloseAllButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDecorView:Landroid/view/View;

.field mHideAnimator:Landroid/animation/ObjectAnimator;

.field mIsInMultiWindowMode:Z

.field mIsRecentsVisible:Z

.field mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

.field mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mShowAnimator:Landroid/animation/ObjectAnimator;

.field mStrMoreApps:Ljava/lang/String;

.field mStrRecents:Ljava/lang/String;

.field mToggleButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->init()V

    .line 78
    return-void
.end method

.method private handleAppListViewAttach(Z)V
    .locals 4
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 114
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    const v1, 0x7f040128

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const v1, 0x7f130349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsAppListView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    .line 117
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->bindViews(Landroid/view/View;)V

    .line 120
    :cond_0
    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->addView(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initAppListView()V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private handleToggleButton(Z)V
    .locals 2
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    .line 88
    const v1, 0x7f0f05f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    .line 90
    const v1, 0x7f0d03f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    .line 83
    return-void
.end method

.method private initAppListView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    sget v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_0
    return-void
.end method

.method private initRecentsView()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setElevation(F)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setVisibility(I)V

    .line 216
    :cond_0
    return-void
.end method

.method private onPageChanged(Z)V
    .locals 4
    .param p1, "isRecentsPage"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 159
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->resetScroll()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrRecents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    .line 102
    const v0, 0x7f130345

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mCloseAllButton:Landroid/widget/Button;

    .line 103
    const v0, 0x7f130347

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/RecentsSlidingView$1;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    .prologue
    .line 294
    iget v0, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->target:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/android/systemui/recents/views/RecentsSlidingView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView$3;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 293
    :goto_0
    return-void

    .line 297
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 300
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 299
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskBounds:Landroid/graphics/Rect;

    .line 304
    iget v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->targetTaskStack:I

    iget-boolean v5, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->screenPinningRequested:Z

    iget-boolean v6, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->isFreeformDragging:Z

    .line 303
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    goto :goto_0

    .line 312
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    if-eqz v0, :cond_1

    .line 313
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    const v0, 0x7f13035c

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initRecentsView()V

    .line 94
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 201
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 148
    if-nez p2, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 147
    return-void
.end method

.method public reload(Z)V
    .locals 3
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    .line 179
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mStrMoreApps:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mDecorView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleAppListViewAttach(Z)V

    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->handleToggleButton(Z)V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetViews()V

    .line 190
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsInMultiWindowMode:Z

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsAppListView;->reload()V

    .line 176
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListView:Lcom/android/systemui/recents/views/RecentsAppListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsAppListView;->unload(Z)V

    goto :goto_0
.end method

.method public resetViews()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initRecentsView()V

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->initAppListView()V

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(Z)V

    .line 209
    return-void
.end method

.method public toggle()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    .line 239
    .local v1, "showTarget":Landroid/view/View;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 240
    .local v0, "hideTarget":Landroid/view/View;
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    .line 243
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 244
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 245
    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    .line 246
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v3

    aput v9, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v3

    .line 247
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v3

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v4

    .line 245
    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    .line 248
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT70:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 249
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mShowAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 252
    invoke-virtual {v0, v9}, Landroid/view/View;->setElevation(F)V

    .line 253
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_1

    .line 254
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 261
    :cond_1
    new-array v2, v8, [Landroid/animation/PropertyValuesHolder;

    .line 262
    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v7

    aput v7, v6, v3

    sget v7, Lcom/android/systemui/recents/views/RecentsSlidingView;->mToggleAnimationTranslationY:I

    int-to-float v7, v7

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v2, v3

    .line 263
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v7

    aput v7, v6, v3

    aput v9, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v2, v4

    .line 261
    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    .line 264
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/systemui/Interpolators;->SINE_IN_OUT70:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/recents/views/RecentsSlidingView$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/views/RecentsSlidingView$2;-><init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 283
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mHideAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 286
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mIsRecentsVisible:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onPageChanged(Z)V

    .line 237
    return-void

    .line 238
    .end local v0    # "hideTarget":Landroid/view/View;
    .end local v1    # "showTarget":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .restart local v1    # "showTarget":Landroid/view/View;
    goto/16 :goto_0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mAppListViewContainer:Landroid/view/View;

    .restart local v0    # "hideTarget":Landroid/view/View;
    goto/16 :goto_1

    :cond_4
    move v2, v4

    .line 240
    goto/16 :goto_2
.end method
