.class Lcom/android/systemui/recents/views/TaskStackView$9;
.super Ljava/lang/Object;
.source "TaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskStackView;->onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskStackView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 2309
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2313
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get4(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/misc/DozeTrigger;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 2319
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v3}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2320
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 2321
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 2322
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackView;->-get2(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v5}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 2323
    iget-boolean v5, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    const/4 v6, 0x0

    .line 2322
    invoke-static {v3, v4, v6, v5}, Lcom/android/systemui/recents/views/TaskStackView;->-wrap0(Lcom/android/systemui/recents/views/TaskStackView;IZZ)Z

    .line 2324
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackView;->-get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 2325
    .local v1, "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView$9;->this$0:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, v3, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 2326
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 2330
    .end local v0    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v1    # "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v2    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/EnterRecentsTaskStackAnimationCompletedEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/EnterRecentsTaskStackAnimationCompletedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2311
    return-void
.end method
