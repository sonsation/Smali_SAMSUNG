.class public Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;
.super Landroid/app/DialogFragment;
.source "FingerprintLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintLockSettingsDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintLockSettings;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 776
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onCancel!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    .line 778
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap4(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    .line 775
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 680
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string/jumbo v9, ""

    .line 683
    .local v9, "title":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 684
    .local v8, "okButtonString":Ljava/lang/String;
    const-string/jumbo v7, ""

    .line 685
    .local v7, "laterButtonString":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap0(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "description":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b06f8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 691
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Setup_Display"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 699
    :cond_0
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 703
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;)V

    .line 699
    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 758
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;)V

    .line 699
    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 689
    :cond_1
    const v0, 0x7f0b06f7

    goto :goto_0

    .line 692
    :cond_2
    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 693
    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 692
    if-eqz v0, :cond_0

    .line 694
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b06ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0770

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintLockSettings$FingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b076f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
