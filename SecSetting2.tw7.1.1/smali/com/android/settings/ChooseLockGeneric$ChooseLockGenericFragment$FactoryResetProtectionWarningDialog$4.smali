.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->deleteAllFingerPrint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field final synthetic val$mWithIrises:Z

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/Activity;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .param p2, "val$fingerprintManager"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p3, "val$parentActivity"    # Landroid/app/Activity;
    .param p4, "val$args"    # Landroid/os/Bundle;
    .param p5, "val$mWithIrises"    # Z

    .prologue
    .line 5251
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$parentActivity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$args:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$mWithIrises:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 5254
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get4(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v3}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 5255
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 5257
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$fingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 v1, 0x3e8

    .line 5258
    const/4 v4, -0x1

    move-object v3, v2

    move-object v5, v2

    .line 5257
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-nez v0, :cond_2

    .line 5260
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "deleteAllFingerprints Success"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "LOSC"

    const-string/jumbo v3, "Delete_Fingerprint"

    const-wide/16 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 5262
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get9()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5265
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "on CLick pos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    .line 5274
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$parentActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-wrap3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/app/Activity;)V

    .line 5279
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$mWithIrises:Z

    if-eqz v0, :cond_0

    .line 5280
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->removeIris()V

    .line 5253
    :cond_0
    return-void

    .line 5268
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 5270
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$4;->val$args:Landroid/os/Bundle;

    const-string/jumbo v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5268
    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    goto :goto_0

    .line 5276
    :cond_2
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "deleteAllFingerprints Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
