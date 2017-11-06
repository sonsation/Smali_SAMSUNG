.class public Lcom/samsung/android/app/music/milk/help/SendLogDialog;
.super Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;
.source "SendLogDialog.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 38
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 42
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    new-instance v0, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog$1;-><init>(Lcom/samsung/android/app/music/milk/help/SendLogDialog;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;->setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/help/SendLogDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a03f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a039a

    .line 30
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a03f3

    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    new-instance v2, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;)V

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
