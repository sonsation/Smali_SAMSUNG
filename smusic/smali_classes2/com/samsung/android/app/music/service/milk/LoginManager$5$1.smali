.class Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/LoginManager$5;->onReceiveAccessToken(IZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

.field final synthetic val$resultData:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/LoginManager$5;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->val$resultData:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/SABundle;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->val$resultData:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/milk/SABundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$802(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)Lcom/samsung/android/app/music/service/milk/SABundle;

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$300(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lrx/subjects/PublishSubject;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$800(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$300(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lrx/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onCompleted()V

    .line 393
    const-string v0, "LoginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveAccessToken() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$5$1;->this$1:Lcom/samsung/android/app/music/service/milk/LoginManager$5;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/LoginManager$5;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$800(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/SABundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method
