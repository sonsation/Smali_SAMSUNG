.class Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0xcc

    .line 600
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    .line 602
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v1, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideTitle:Landroid/widget/TextView;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$6$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$6;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 599
    :cond_1
    return-void
.end method
