.class Lcom/samsung/android/app/music/service/milk/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 339
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 342
    const-string v2, "LoginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {p2}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$402(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$400(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    const-string v3, "12yndwlwd1"

    const-string v4, "C548D30428E8D901492340A08A969617"

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 347
    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$500(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$600(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISACallback$Stub;

    move-result-object v6

    .line 346
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "registrationCode":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 352
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$400(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v2

    const-string v3, "12yndwlwd1"

    const-string v4, "C548D30428E8D901492340A08A969617"

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    .line 354
    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$500(Lcom/samsung/android/app/music/service/milk/LoginManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$600(Lcom/samsung/android/app/music/service/milk/LoginManager;)Lcom/msc/sa/aidl/ISACallback$Stub;

    move-result-object v6

    .line 353
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v1

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$702(Lcom/samsung/android/app/music/service/milk/LoginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    const-string v2, "LoginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected registrationCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .end local v1    # "registrationCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 360
    const-string v2, "LoginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAService registerCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$402(Lcom/samsung/android/app/music/service/milk/LoginManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LoginManager$4;->this$0:Lcom/samsung/android/app/music/service/milk/LoginManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->access$702(Lcom/samsung/android/app/music/service/milk/LoginManager;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    return-void
.end method
