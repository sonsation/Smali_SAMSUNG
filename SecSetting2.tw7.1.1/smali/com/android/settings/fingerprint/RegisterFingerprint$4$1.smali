.class Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0xcc

    .line 762
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set12(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 763
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get4(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 767
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 761
    :cond_0
    return-void
.end method
