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
    .line 1100
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1106
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    if-eqz v0, :cond_0

    .line 1108
    const v1, 0x7f0b08f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 1103
    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/bio/face/SemBioFace;)V
    .locals 4
    .param p1, "face"    # Lcom/samsung/android/bio/face/SemBioFace;

    .prologue
    .line 1114
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "onRemovalSucceeded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceSettings;->-get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get7(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap1(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 1117
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$1;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-wrap3(Lcom/samsung/android/settings/face/FaceSettings;)V

    .line 1113
    return-void
.end method
