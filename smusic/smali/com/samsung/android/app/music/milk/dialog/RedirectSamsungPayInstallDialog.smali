.class public Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;
.super Landroid/app/DialogFragment;
.source "RedirectSamsungPayInstallDialog.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RedirectSamsungPayInstallDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0459

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    const v1, 0x7f0a0458

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 30
    const v1, 0x7f0a02e7

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    const v1, 0x7f0a0330

    new-instance v2, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog$2;-><init>(Lcom/samsung/android/app/music/milk/dialog/RedirectSamsungPayInstallDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 89
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 90
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 92
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
