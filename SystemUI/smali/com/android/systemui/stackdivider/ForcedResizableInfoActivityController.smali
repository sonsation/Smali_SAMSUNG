.class public Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDividerDraging:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mPackagesShownInSession:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityDismissingDockedStack()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->activityForcedResizable(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    .line 50
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    .line 53
    new-instance v0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$1;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 63
    invoke-static {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;-><init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 60
    return-void
.end method

.method private activityDismissingDockedStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 119
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private activityForcedResizable(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->debounce(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->postTimeout()V

    .line 103
    return-void
.end method

.method private debounce(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v1, 0x0

    return v1

    .line 153
    :cond_0
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 157
    .local v0, "debounce":Z
    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPackagesShownInSession:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    return v0
.end method

.method private postTimeout()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    return-void
.end method

.method private showPending()V
    .locals 5

    .prologue
    .line 130
    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 131
    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 132
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 134
    .local v2, "options":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 135
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(Z)V

    .line 136
    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 138
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mPendingTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 129
    return-void
.end method


# virtual methods
.method public notifyDockedStackExistsChanged(Z)V
    .locals 0
    .param p1, "exists"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    .line 87
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StartedDragingEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/stackdivider/events/StartedDragingEvent;

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    .line 95
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/stackdivider/events/StoppedDragingEvent;

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->mDividerDraging:Z

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->showPending()V

    .line 98
    return-void
.end method
