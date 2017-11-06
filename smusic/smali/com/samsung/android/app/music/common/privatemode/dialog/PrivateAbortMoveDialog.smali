.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;
.super Landroid/app/DialogFragment;
.source "PrivateAbortMoveDialog.java"


# static fields
.field private static MESSAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "msg"

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 14
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;-><init>()V

    .line 15
    .local v0, "abortMoveDialog":Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    .local v1, "args":Landroid/os/Bundle;
    sget-object v2, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->setArguments(Landroid/os/Bundle;)V

    .line 19
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 25
    .local v1, "data":Landroid/os/Bundle;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0101

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 27
    sget-object v2, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 28
    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateAbortMoveDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
