.class public Lcom/android/settings/fingerprint/FingerprintDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

.field private mMsg:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "FingerprintDeleteDialog created illegally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    .line 25
    return-void
.end method


# virtual methods
.method public cancelDeleteDialog()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 109
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 74
    packed-switch p2, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onNegativeClick()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintDeleteDialog"

    const v2, 0x7f0b0983

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreateDialog can\'t make dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onCreateDialog illegalCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->dismiss()V

    .line 60
    return-object v3

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mTitle:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mMsg:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 66
    const v1, 0x7f0b0510

    .line 63
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 67
    const/high16 v1, 0x1040000

    .line 63
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 69
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 102
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "FpstFingerprintDeleteDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDeleteDialog;->mListener:Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    .line 92
    :cond_0
    return-void
.end method
