.class Lcom/android/settings/fingerprint/FingerprintLockSettings$4;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings;->showFingerprintLockSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintLockSettings;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 818
    const-string/jumbo v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onDismiss!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get2(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    .line 821
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->overridePendingTransition(II)V

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-set0(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)Z

    .line 817
    return-void
.end method
