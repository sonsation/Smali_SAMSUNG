.class Lcom/samsung/android/app/music/service/milk/LoginManager$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


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
    .line 330
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$3;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "onReceiveAccessToken is not received /timeout : 8sec"

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$3;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$300(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lrx/subjects/PublishSubject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrx/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 336
    return-void
.end method
