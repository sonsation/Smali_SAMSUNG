.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

.field final synthetic val$isEnableFeatures:Z

.field final synthetic val$isEnableFingerprintLock:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p2, "val$isEnableFingerprintLock"    # Z
    .param p3, "val$isEnableFeatures"    # Z

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    iput-boolean p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->val$isEnableFingerprintLock:Z

    iput-boolean p3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->val$isEnableFeatures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 1181
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->val$isEnableFingerprintLock:Z

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1184
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1187
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->val$isEnableFingerprintLock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->val$isEnableFeatures:Z

    if-eqz v0, :cond_2

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z

    .line 1180
    :goto_0
    return-void

    .line 1190
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z

    goto :goto_0
.end method
