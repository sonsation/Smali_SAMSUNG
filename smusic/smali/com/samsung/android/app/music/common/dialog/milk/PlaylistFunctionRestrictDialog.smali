.class public Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;
.super Landroid/app/DialogFragment;
.source "PlaylistFunctionRestrictDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$PlaylistFunctionRestrictDialogLauncher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 19
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a031b

    .line 20
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a031a

    .line 21
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog;Landroid/content/Context;)V

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
