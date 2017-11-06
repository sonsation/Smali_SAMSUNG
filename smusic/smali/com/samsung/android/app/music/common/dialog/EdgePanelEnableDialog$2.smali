.class Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;
.super Ljava/lang/Object;
.source "EdgePanelEnableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "intent.action.EDGE_PANELS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v2, "EdgePanels"

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    .line 46
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->dismiss()V

    .line 58
    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v2}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 59
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onClick() - startActivity() could not find a suitable activity for launching intent.action.EDGE_PANELS"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
