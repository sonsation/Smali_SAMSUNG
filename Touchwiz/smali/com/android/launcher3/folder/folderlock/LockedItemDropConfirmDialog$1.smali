.class Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;
.super Ljava/lang/Object;
.source "LockedItemDropConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;->this$0:Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;

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
    .line 44
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
