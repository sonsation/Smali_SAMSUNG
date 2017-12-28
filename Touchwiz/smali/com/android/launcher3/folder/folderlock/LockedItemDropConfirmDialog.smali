.class public Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;
.super Landroid/app/DialogFragment;
.source "LockedItemDropConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LockedItemDropConfirmDialog"

.field private static sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo; = null

.field private static final sFragmentTag:Ljava/lang/String; = "LockedItemDropConfirm"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 21
    sput-object p1, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 22
    new-instance v0, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;

    invoke-direct {v0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;-><init>()V

    .line 23
    .local v0, "f":Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LockedItemDropConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    .line 58
    .local v0, "folderLock":Lcom/android/launcher3/folder/folderlock/FolderLock;
    packed-switch p2, :pswitch_data_0

    .line 66
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    sget-object v1, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->sDropedInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-string v2, ""

    .line 30
    .local v2, "lock_unlock_dialog_title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "lock_unlock_dialog_msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "positive_button_string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "negative_button_string":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 36
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 38
    invoke-virtual {v5, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 39
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 40
    .local v0, "dialog":Landroid/app/AlertDialog;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    new-instance v5, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog$1;-><init>(Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 51
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 71
    return-void
.end method
