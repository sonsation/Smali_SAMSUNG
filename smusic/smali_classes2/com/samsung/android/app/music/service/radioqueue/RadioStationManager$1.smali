.class Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "RadioStationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "intentAction":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive : onReceive intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v2, "com.samsung.common.service.prefetch.notify_prefetch_status"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const-string v2, "prefetch_status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 323
    iget-object v2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$1;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;->access$100(Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager;)Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$RadioEventHandler;->requestLoadStation()V

    .line 326
    .end local v1    # "status":I
    :cond_0
    return-void
.end method
