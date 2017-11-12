.class public Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "LockscreenMenuSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnificationConfirmationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2666
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newIntance(Z)Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    .locals 3
    .param p0, "compliant"    # Z

    .prologue
    .line 2670
    new-instance v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;-><init>()V

    .line 2671
    .local v1, "dialog":Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2672
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "compliant"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2673
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 2674
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2687
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    .line 2688
    .local v1, "parentFragment":Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "compliant"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2689
    .local v0, "compliant":Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2690
    const v3, 0x7f0b146a

    .line 2689
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2691
    if-eqz v0, :cond_0

    const v2, 0x7f0b146b

    .line 2689
    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 2694
    if-eqz v0, :cond_1

    const v2, 0x7f0b146d

    .line 2696
    :goto_1
    new-instance v4, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;ZLcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    .line 2689
    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 2707
    const v3, 0x7f0b107a

    const/4 v4, 0x0

    .line 2689
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2692
    :cond_0
    const v2, 0x7f0b146c

    goto :goto_0

    .line 2695
    :cond_1
    const v2, 0x7f0b146e

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2713
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2714
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings$UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;->-wrap8(Lcom/samsung/android/settings/lockscreen/LockscreenMenuSettings;)V

    .line 2712
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2679
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2681
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2678
    :cond_0
    return-void
.end method
