.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-set2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 880
    return-void
.end method

.method public onNegativeClick()V
    .locals 4

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f024d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 875
    return-void
.end method

.method public onPositiveClick()V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get1(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f024e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 871
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap6(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 869
    return-void
.end method

.method public onResumeDialog()V
    .locals 0

    .prologue
    .line 885
    return-void
.end method
