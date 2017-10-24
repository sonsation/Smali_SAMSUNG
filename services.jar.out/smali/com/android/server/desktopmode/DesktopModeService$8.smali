.class Lcom/android/server/desktopmode/DesktopModeService$8;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;
    .param p2, "val$enabled"    # Z

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 814
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 816
    :goto_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-set4(Lcom/android/server/desktopmode/DesktopModeService;I)I

    .line 818
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfigurationChanged(), enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-set1(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    .line 822
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap23(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 823
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/am/IActivityManagerServiceBridge;->removeHomeTask()V

    .line 824
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap18(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 825
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap19(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;)V

    .line 826
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap2(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 828
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    if-nez v3, :cond_1

    .line 829
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-set5(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 830
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-set0(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap11(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 833
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap15(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 834
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    .line 835
    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get5(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get8(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 834
    :cond_2
    :goto_1
    invoke-static {v3, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap14(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 836
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get12(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    .line 837
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    if-eqz v3, :cond_3

    move v1, v2

    .line 838
    :cond_3
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get14(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v2

    .line 836
    invoke-interface {v0, v1, v2}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    .line 813
    :cond_4
    return-void

    .line 815
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$enabled:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v3

    if-ne v3, v2, :cond_4

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 835
    goto :goto_1
.end method
