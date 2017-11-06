.class Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;
.super Ljava/lang/Object;
.source "AbsDeleteableWithDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

.field final synthetic val$deleteItemIds:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;[J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->val$deleteItemIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "a":Landroid/app/Activity;
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->val$deleteItemIds:[J

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->deleteItemsInternal(Landroid/app/Activity;[J)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-static {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 178
    invoke-static {v2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;->getScreenId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2077"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->dismiss()V

    .line 184
    const-string v2, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " DeleteConfirmDialog.onClick() | deleteItemCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->val$deleteItemIds:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->val$deleteItemIds:[J

    array-length v1, v1

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | mDeleteableWithDialog: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 187
    invoke-static {v3}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->access$000(Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;)Lcom/samsung/android/app/music/AbsDeleteableWithDialog;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " | activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " parentFragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog$1;->this$0:Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;

    .line 188
    invoke-virtual {v3}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    .line 186
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
