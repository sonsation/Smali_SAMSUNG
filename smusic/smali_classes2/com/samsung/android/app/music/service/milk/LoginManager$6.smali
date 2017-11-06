.class Lcom/samsung/android/app/music/service/milk/LoginManager$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 419
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 422
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LoginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() Received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    new-instance v2, Lcom/samsung/android/app/music/common/model/UserInfo;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/common/model/UserInfo;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$1100(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/samsung/android/app/music/common/model/UserInfo;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$1200(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    .line 427
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$500(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0313

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$6;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$1200(Lcom/samsung/android/app/music/service/milk/LoginManager;)V

    goto :goto_0
.end method
