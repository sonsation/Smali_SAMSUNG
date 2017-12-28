.class public Lcom/android/launcher3/home/AddItemOnLastPageDialog;
.super Landroid/app/DialogFragment;
.source "AddItemOnLastPageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mIsTargetHotseat:Z = false

.field private static mNegativeRunnable:Ljava/lang/Runnable; = null

.field private static mPositiveRunnable:Ljava/lang/Runnable; = null

.field private static mRemainCnt:I = 0x0

.field private static mTotalCnt:I = 0x0

.field private static final sFragmentTag:Ljava/lang/String; = "AddItemOnLastPageDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;Ljava/lang/Runnable;IIZ)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "addLastItemRunnable"    # Ljava/lang/Runnable;
    .param p2, "restoreRunnable"    # Ljava/lang/Runnable;
    .param p3, "remainCnt"    # I
    .param p4, "totalCnt"    # I
    .param p5, "isTargetHotseat"    # Z

    .prologue
    .line 39
    sput-object p1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    .line 40
    sput-object p2, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    .line 41
    sput p3, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mRemainCnt:I

    .line 42
    sput p4, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mTotalCnt:I

    .line 43
    sput-boolean p5, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mIsTargetHotseat:Z

    .line 44
    new-instance v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;

    invoke-direct {v0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;-><init>()V

    .line 45
    .local v0, "dialog":Lcom/android/launcher3/home/AddItemOnLastPageDialog;
    const-string v1, "AddItemOnLastPageDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 70
    const-string v1, "AddItemOnLastPageDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 71
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 74
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 85
    const-string v0, "AddItemOnLastPageDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 50
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 51
    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 52
    sput-object v1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 54
    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 55
    sput-object v1, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    sget-boolean v2, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mIsTargetHotseat:Z

    if-eqz v2, :cond_0

    const v1, 0x7f090014

    .line 62
    .local v1, "messageID":I
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mTotalCnt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mRemainCnt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090012

    .line 64
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, "dialog":Landroid/app/Dialog;
    return-object v0

    .line 61
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "messageID":I
    :cond_0
    const v1, 0x7f090013

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 78
    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mPositiveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/android/launcher3/home/AddItemOnLastPageDialog;->mNegativeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 82
    return-void
.end method
