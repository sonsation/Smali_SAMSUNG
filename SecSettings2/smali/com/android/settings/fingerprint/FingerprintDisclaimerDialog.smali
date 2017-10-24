.class public Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintDisclaimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field isFidoInstalled:Z

.field isKioskMode:Z

.field isSamsungpayInstalled:Z

.field isSbrowserInstalled:Z

.field private listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isFidoInstalled:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    .line 47
    return-void
.end method

.method private makeFingerPrintDescString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.sbrowser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.samsungpay"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.spay"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    .line 167
    const-string/jumbo v0, "&#8226 "

    .line 169
    .local v0, "bullet":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 170
    .local v1, "s":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isKioskMode:Z

    if-nez v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSbrowserInstalled:Z

    if-eqz v2, :cond_1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b06d8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->isSamsungpayInstalled:Z

    if-eqz v2, :cond_2

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<br/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0735

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    :cond_2
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    const-string/jumbo v0, "FpstFingerprintDisclaimerDialog"

    const-string/jumbo v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->listener:Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;->onCanceDisclaimerDialog()V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 71
    const-string/jumbo v8, "FpstFingerprintDisclaimerDialog"

    const-string/jumbo v9, "onCreateDialog"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "dialogView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, "dialogLayout":Landroid/view/LayoutInflater;
    if-nez v1, :cond_0

    .line 78
    const-string/jumbo v8, "FpstFingerprintDisclaimerDialog"

    const-string/jumbo v9, "onCreateDialog: dialogLayout is null!!"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-object v10

    .line 82
    :cond_0
    const v8, 0x7f0400f9

    invoke-virtual {v1, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 85
    .local v2, "dialogView":Landroid/view/View;
    const v8, 0x7f1102bc

    :try_start_0
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 87
    .local v4, "mDoNotShow":Landroid/widget/CheckBox;
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v4    # "mDoNotShow":Landroid/widget/CheckBox;
    :goto_0
    const v8, 0x7f110372

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 98
    .local v5, "mMessage":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->makeFingerPrintDescString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const-string/jumbo v8, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    const v8, 0x7f110373

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "mVZWDisclaimer":Landroid/widget/TextView;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v8

    if-nez v8, :cond_1

    .line 103
    const v8, 0x7f0b0739

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 105
    const v8, 0x7f110371

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 106
    .local v7, "mVzwDisclaimerMsg":Landroid/widget/TextView;
    const v8, 0x7f0b0737

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .end local v7    # "mVzwDisclaimerMsg":Landroid/widget/TextView;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    .end local v6    # "mVZWDisclaimer":Landroid/widget/TextView;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f0b0683

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 116
    new-instance v8, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;

    invoke-direct {v8, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;)V

    const v9, 0x7f0b072c

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 93
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v5    # "mMessage":Landroid/widget/TextView;
    :catch_0
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 150
    const-string/jumbo v0, "FpstFingerprintDisclaimerDialog"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 149
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 139
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 144
    return-void
.end method

.method public setPreferences(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
