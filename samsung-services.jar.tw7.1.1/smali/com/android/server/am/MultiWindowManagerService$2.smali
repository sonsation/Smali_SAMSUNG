.class Lcom/android/server/am/MultiWindowManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3040
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3041
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3042
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_0

    .line 3044
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {v3, v2}, Lcom/android/server/am/MultiWindowManagerService;->-wrap2(Lcom/android/server/am/MultiWindowManagerService;Z)V

    .line 3046
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3047
    .local v1, "focus":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v2}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3048
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    .line 3049
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3050
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    .line 3039
    .end local v1    # "focus":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    return-void

    .line 3044
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 3052
    .restart local v1    # "focus":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService$2;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAllTasksInFreeformLocked()Z

    goto :goto_1
.end method
