.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;
.super Ljava/lang/Object;
.source "PrivateConfirmHelpDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

.field final synthetic val$moveToPrivate:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->val$moveToPrivate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 93
    iget-object v4, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->val$moveToPrivate:Z

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;Z)V

    .line 95
    iget-object v4, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/app/Activity;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 97
    .local v1, "data":Landroid/os/Bundle;
    const-string v4, "list_items"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 98
    .local v3, "list":[J
    const-string v4, "is_folder"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 99
    .local v2, "isFolder":Z
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateConfirmHelpDialog$3;->val$moveToPrivate:Z

    .line 100
    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->startPrivateModeMoveOperation(Landroid/app/Activity;[JZZ)V

    .line 101
    return-void
.end method
