.class Lcom/android/settings/fingerprint/FingerprintLockSettings$2;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 794
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap1(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get11(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    .line 799
    const-string/jumbo v0, "lock_screen_pin_pattern_password"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-get8(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$2;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->-wrap3(Lcom/android/settings/fingerprint/FingerprintLockSettings;Z)V

    .line 796
    :cond_0
    return-void
.end method
