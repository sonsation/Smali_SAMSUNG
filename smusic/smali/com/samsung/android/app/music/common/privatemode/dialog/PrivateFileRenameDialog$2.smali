.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$2;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 93
    return-void
.end method
