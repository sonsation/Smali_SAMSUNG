.class Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$UIUpdateHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    .prologue
    .line 6104
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 6108
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6109
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6110
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get18(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 6111
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v3}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 6112
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set6(Z)Z

    .line 6113
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set7(Z)Z

    .line 6114
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set19(Z)Z

    .line 6115
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->-set11(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 6116
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get33()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6117
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set10(Z)Z

    .line 6120
    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get34()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/policy/GlobalActions;->-get33()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6121
    const-string/jumbo v0, "GlobalActions"

    const-string/jumbo v1, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6122
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set10(Z)Z

    .line 6123
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->-set9(Z)Z

    .line 6124
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6125
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get3(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 6127
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler$1;->this$1:Lcom/android/server/policy/GlobalActions$UIUpdateHandler;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$UIUpdateHandler;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-wrap19(Lcom/android/server/policy/GlobalActions;)V

    .line 6106
    :cond_2
    return-void
.end method
