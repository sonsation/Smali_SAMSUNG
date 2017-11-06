.class public Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;
.super Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.source "DeviceDeregisterLimitedDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/DeviceDeregisterLimitedDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a044d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a044c

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0449

    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
