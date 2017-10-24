.class Lcom/samsung/android/settings/face/FaceSettings$1;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
.source "FaceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/face/FaceSettings;

    .prologue
    .line 884
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/Face;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 888
    const-string/jumbo v0, "FcstFaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    const v1, 0x7f0b075e

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceSettings;I)V

    .line 887
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/Face;)V
    .locals 4
    .param p1, "face"    # Lcom/samsung/android/bio/face/Face;

    .prologue
    .line 894
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "onRemovalSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap1(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 893
    return-void
.end method
