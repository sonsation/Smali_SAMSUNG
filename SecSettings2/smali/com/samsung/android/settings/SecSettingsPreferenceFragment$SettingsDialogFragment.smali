.class public Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SecSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method static synthetic -set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 3
    .param p1, "fragment"    # Lcom/android/settings/DialogCreatable;
    .param p2, "dialogId"    # I

    .prologue
    .line 703
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 704
    iput p2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 705
    instance-of v0, p1, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fragment argument must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    const-class v2, Landroid/app/Fragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "fragment":Lcom/android/settings/DialogCreatable;
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 703
    return-void
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 757
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 732
    if-eqz p1, :cond_3

    .line 733
    const-string/jumbo v1, "key_dialog_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 734
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 735
    const-string/jumbo v1, "key_parent_fragment_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 736
    .local v0, "mParentFragmentId":I
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 739
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_2

    .line 740
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 741
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 744
    const-string/jumbo v3, " must implement "

    .line 741
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 745
    const-class v3, Lcom/android/settings/DialogCreatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 748
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v1, :cond_3

    .line 750
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-static {v1, p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->-set0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    .line 753
    .end local v0    # "mParentFragmentId":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/android/settings/DialogCreatable;

    iget v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v1, v2}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 778
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 781
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->-get0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->-set0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    .line 777
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 766
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 765
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 714
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 715
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 716
    const-string/jumbo v0, "key_dialog_id"

    iget v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 717
    const-string/jumbo v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 723
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDialogShowing()V

    .line 722
    :cond_0
    return-void
.end method
