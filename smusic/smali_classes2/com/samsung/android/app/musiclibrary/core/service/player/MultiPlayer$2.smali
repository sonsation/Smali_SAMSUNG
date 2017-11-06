.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;
.super Ljava/lang/Object;
.source "MultiPlayer.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquireStatus(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcquireStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->getFieldsStringValueNameForDebugging(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 450
    packed-switch p2, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 452
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "play_ready_drm_acquire_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 455
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 458
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 459
    .restart local v0    # "data":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 463
    :cond_0
    const-string v1, "play_ready_drm_acquire_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 468
    .end local v0    # "data":Landroid/os/Bundle;
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 469
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "type"

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 470
    const-string/jumbo v1, "text1"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v1, "play_ready_drm_acquire_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
