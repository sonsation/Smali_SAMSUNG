.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;
.super Ljava/lang/Object;
.source "PrivateFileRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$3;->val$checkBox:Landroid/widget/CheckBox;

    .line 101
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->renameNotifyCallback(IZ)V

    .line 102
    return-void
.end method
