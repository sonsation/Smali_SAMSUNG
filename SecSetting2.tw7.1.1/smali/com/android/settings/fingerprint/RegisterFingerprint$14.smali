.class Lcom/android/settings/fingerprint/RegisterFingerprint$14;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/RegisterFingerprint;

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1886
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "Close_Error_In_Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1888
    :cond_0
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "Close_Error_Entered_In_Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set1(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 1892
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/view/ViewGroup;

    const/16 v3, 0xcb

    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1894
    const-wide/16 v2, 0x82

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/view/ViewGroup;

    const/16 v3, 0xcc

    invoke-static {v1, v3, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1899
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$14;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0xce

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    .line 1885
    :cond_1
    return-void

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "mHideErrorRunnable : Interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method