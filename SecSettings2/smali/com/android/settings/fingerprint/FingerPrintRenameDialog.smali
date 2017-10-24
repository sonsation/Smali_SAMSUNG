.class public Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
.super Landroid/app/DialogFragment;
.source "FingerPrintRenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field private listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

.field private mFingerPrintIndex:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mOriginalName:Ljava/lang/String;

.field private mUserId:I

.field private mView:Landroid/view/View;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameEditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "FingerPrintRenameDialog created illegally"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    .line 67
    iput p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    .line 68
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "fingerName":Ljava/lang/String;
    const v3, 0x7f0b0705

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "warning":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f1103a8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    .line 201
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v6}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setTextIsSelectable(Z)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    const v4, 0x7f1103a9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    .line 204
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 208
    iget v5, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 207
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_0
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    .line 212
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mWarningText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3, v7}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setEnabled(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->selectAll()V

    .line 225
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v4, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$3;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 197
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v3, "FpstFingerPrintRenameDialog"

    const-string/jumbo v4, "Caught Exception setSelection"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showInputMethod()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->requestFocus()Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$4;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    .line 290
    const-wide/16 v2, 0xc8

    .line 276
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 273
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$5;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    .line 309
    const-wide/16 v2, 0x1

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showSoftKeyboard()V
    .locals 4

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$6;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    .line 321
    const-wide/16 v2, 0xfa

    .line 314
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    return-void
.end method


# virtual methods
.method public cancelRenameDialog()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 368
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 258
    packed-switch p2, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 260
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "fingerPrintName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerPrintIndex:I

    iget v3, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mUserId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    goto :goto_1

    .line 258
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 326
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 330
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 325
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mUserId:I

    .line 86
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintName:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onCreateDialog() : isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0714

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    :cond_0
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onCreateDialog illegalCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->dismiss()V

    .line 128
    return-object v2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->context:Landroid/content/Context;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 133
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->initView(Landroid/view/View;)V

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    const v1, 0x7f0b0686

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    const v1, 0x7f0b0706

    .line 134
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    const/high16 v1, 0x1040000

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 138
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    new-instance v1, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;

    const/16 v3, 0x32

    invoke-direct {v2, p0, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerPrintRenameDialog;I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 351
    const-string/jumbo v1, "FpstFingerPrintRenameDialog"

    const-string/jumbo v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 353
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 356
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 350
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 361
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onDismiss()V

    .line 360
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 335
    const-string/jumbo v0, "FpstFingerPrintRenameDialog"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;->onResumeDialog()V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showInputMethod()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->showSoftKeyboard()V

    .line 334
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 241
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mEditText:Lcom/android/settings/fingerprint/FingerPrintRenameEditText;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->listener:Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;

    .line 252
    return-void
.end method
