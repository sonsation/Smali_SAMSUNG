.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


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
    .line 1349
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 5
    .param p1, "drmMangerClient"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmEvent;

    .prologue
    .line 1352
    const-string v2, "MusicDrm"

    const-string v3, "DrmManagerClient onEvent"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    const-string v2, "drm_info_status_object"

    invoke-virtual {p2, v2}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1360
    .local v0, "att":Ljava/lang/Object;
    instance-of v2, v0, Landroid/drm/DrmInfoStatus;

    if-eqz v2, :cond_0

    .line 1361
    const-string v3, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoStatus status code : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Landroid/drm/DrmInfoStatus;

    iget v2, v2, Landroid/drm/DrmInfoStatus;->statusCode:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    const-string v3, "MusicDrm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoStatus info type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, v0

    check-cast v2, Landroid/drm/DrmInfoStatus;

    iget v2, v2, Landroid/drm/DrmInfoStatus;->infoType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    const-string v2, "MusicDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfoStatus getSubscriptionId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Landroid/drm/DrmInfoStatus;

    .end local v0    # "att":Ljava/lang/Object;
    iget-object v4, v0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 1365
    invoke-virtual {v4}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1364
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_0
    const-string v2, "MusicDrm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_1

    .line 1389
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$200(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v1

    .line 1391
    .local v1, "status":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$300(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1392
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1393
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    .line 1403
    .end local v1    # "status":I
    :cond_1
    :goto_0
    return-void

    .line 1397
    .restart local v1    # "status":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1398
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$400(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->access$100(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method
