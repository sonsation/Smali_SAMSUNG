.class Lcom/android/server/policy/GlobalActions$23;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1911
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1912
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get25(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/GlobalActions$23$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$23$1;-><init>(Lcom/android/server/policy/GlobalActions$23;)V

    .line 1929
    const-wide/16 v2, 0x1f4

    .line 1917
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1931
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1932
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get68()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1933
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-set18(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1935
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1936
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$23;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v5}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 1937
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    .line 1938
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    .line 1939
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->-set19(Z)Z

    .line 1908
    :cond_1
    return-void

    .line 1932
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
