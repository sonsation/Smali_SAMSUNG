.class Lcom/samsung/android/app/music/service/milk/LoginManager$5;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LoginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/LoginManager;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 3
    .param p1, "requestID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    if-nez p3, :cond_0

    .line 380
    const-string v0, "LoginManager"

    const-string v1, "onReceiveAccessToken() resultData is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 383
    :cond_0
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveAccessToken() isSuccess : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/LoginManager;->mSATokenTimer:Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer;->release()V

    .line 385
    if-eqz p2, :cond_1

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$900(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;-><init>(Lcom/samsung/android/app/music/service/milk/LoginManager$5;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0, p3}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$1000(Lcom/samsung/android/app/music/service/milk/LoginManager;Landroid/os/Bundle;)V

    goto :goto_0
.end method
