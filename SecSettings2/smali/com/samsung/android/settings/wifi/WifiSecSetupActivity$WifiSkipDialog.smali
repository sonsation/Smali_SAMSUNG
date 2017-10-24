.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
.super Landroid/app/DialogFragment;
.source "WifiSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiSkipDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1244
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    .locals 3
    .param p0, "messageRes"    # I

    .prologue
    .line 1237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1238
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "messageRes"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;-><init>()V

    .line 1240
    .local v1, "dialog":Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 1241
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1250
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "messageRes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1251
    .local v0, "messageRes":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1252
    const v2, 0x7f0b0cec

    .line 1251
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1254
    const/4 v2, 0x0

    .line 1251
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1256
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V

    .line 1255
    const v3, 0x7f0b1221

    .line 1251
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1263
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V

    .line 1262
    const v3, 0x7f0b1220

    .line 1251
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
