.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
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
    .line 380
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 385
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get6()I

    move-result v1

    if-eq v1, v4, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 387
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V

    .line 396
    :cond_0
    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-set3(I)I

    .line 383
    :cond_1
    return-void

    .line 389
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 390
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get6()I

    move-result v2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get2(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-ne v2, v1, :cond_3

    .line 391
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-get7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 392
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 389
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
