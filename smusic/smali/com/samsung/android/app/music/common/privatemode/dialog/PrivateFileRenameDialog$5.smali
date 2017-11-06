.class Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$5;
.super Ljava/lang/Object;
.source "PrivateFileRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$5;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 118
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog$5;->this$0:Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;->access$000(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->cancelThread()V

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
