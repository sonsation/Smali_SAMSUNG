.class public Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;
.super Landroid/app/DialogFragment;
.source "DlnaNetworkErrorDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DlnaNetworkErrorDialog"
.end annotation


# static fields
.field private static final KEY_DEVICE:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;-><init>()V

    .line 50
    .local v1, "fg":Landroid/app/DialogFragment;
    invoke-virtual {v1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "deviceName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 70
    const v5, 0x7f0a00a2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "errText":Ljava/lang/String;
    const v5, 0x7f0a0124

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "errTitle":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    const v5, 0x7f0a0146

    new-instance v6, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 93
    .local v1, "d":Landroid/app/Dialog;
    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 94
    return-object v1

    .line 73
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/Dialog;
    .end local v3    # "errText":Ljava/lang/String;
    .end local v4    # "errTitle":Ljava/lang/String;
    :cond_0
    const v5, 0x7f0a0150

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3    # "errText":Ljava/lang/String;
    const v5, 0x7f0a00b8

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "errTitle":Ljava/lang/String;
    goto :goto_0
.end method
