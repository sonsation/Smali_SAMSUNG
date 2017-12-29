.class Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
.super Landroid/content/BroadcastReceiver;
.source "UseAdditionalBiometrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get2(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get2(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->-get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;->this$0:Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;

    invoke-virtual {v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    .line 87
    :cond_3
    return-void
.end method
