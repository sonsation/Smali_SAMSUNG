.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 3
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmErrorEvent;

    .prologue
    .line 1410
    const-string v0, "MusicDrm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmManagerClient onError event.getType(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$500(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1414
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;)V

    .line 1419
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;->start()V

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1421
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method
