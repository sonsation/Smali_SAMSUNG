.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$SemOnMultiSelectedListener;


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
    .line 660
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 663
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap7(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V

    .line 665
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap4(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 662
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 669
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    const-string/jumbo v1, "OnTwMultiSelectStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap10(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 671
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap8(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    .line 668
    return-void
.end method

.method public onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "isShiftpress"    # Z
    .param p7, "isCtrlpress"    # Z
    .param p8, "isPentpress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTwMultiSelected, position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    if-lez p3, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->-wrap9(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V

    .line 676
    :cond_0
    return-void
.end method
