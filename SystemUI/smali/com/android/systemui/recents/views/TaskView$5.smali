.class Lcom/android/systemui/recents/views/TaskView$5;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->dismissTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "val$tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$5;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$5;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 448
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$5;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v2}, Lcom/android/systemui/recents/views/TaskView;->-get1(Lcom/android/systemui/recents/views/TaskView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskView$5;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    .line 449
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 450
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 449
    const/16 v6, 0xc8

    invoke-direct {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 450
    const/4 v5, 0x0

    .line 448
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;-><init>(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 447
    return-void
.end method
