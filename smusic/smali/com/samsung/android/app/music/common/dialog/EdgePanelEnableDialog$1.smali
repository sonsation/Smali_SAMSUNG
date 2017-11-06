.class Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;
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
    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->dismiss()V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;->this$0:Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 37
    return-void
.end method
