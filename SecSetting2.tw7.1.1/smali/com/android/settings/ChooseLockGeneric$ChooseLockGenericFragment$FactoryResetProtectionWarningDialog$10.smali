.class Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->deleteFace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .param p2, "val$context"    # Landroid/app/Activity;
    .param p3, "val$args"    # Landroid/os/Bundle;

    .prologue
    .line 5415
    iput-object p1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput-object p2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-wrap2(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V

    .line 5421
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$context:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-wrap3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/app/Activity;)V

    .line 5423
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-set0(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Lcom/android/settings/ChooseLockSettingsHelper;)Lcom/android/settings/ChooseLockSettingsHelper;

    .line 5424
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)Lcom/android/settings/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 5425
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-static {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get3(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)Lcom/android/settings/ChooseLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 5426
    invoke-static {}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->-get9()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5429
    const-string/jumbo v0, "ChooseLockGenericFragment"

    const-string/jumbo v1, "on CLick pos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5430
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->switchToSwipe()V

    .line 5417
    :goto_0
    return-void

    .line 5432
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->this$2:Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 5433
    iget-object v1, p0, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$10;->val$args:Landroid/os/Bundle;

    const-string/jumbo v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5432
    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;->-wrap1(Lcom/android/settings/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    goto :goto_0
.end method
