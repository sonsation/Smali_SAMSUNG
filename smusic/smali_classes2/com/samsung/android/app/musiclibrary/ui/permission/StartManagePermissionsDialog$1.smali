.class Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;
.super Ljava/lang/Object;
.source "StartManagePermissionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_finish_activity"

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_0
    return-void
.end method
