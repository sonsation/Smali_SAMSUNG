.class Lcom/samsung/android/settings/face/FaceSettings$4;
.super Ljava/lang/Object;
.source "FaceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z
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
    .line 852
    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 857
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceSettings;->-get0(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get3(Lcom/samsung/android/settings/face/FaceSettings;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bio/face/Face;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceSettings;->-get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/Face;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    .line 855
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "no registered faces"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
