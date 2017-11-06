.class Lcom/samsung/android/app/music/service/milk/MilkService$1;
.super Landroid/content/BroadcastReceiver;
.source "MilkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/MilkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/MilkService;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "MilkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() action - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->access$000(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$1;->this$0:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->stopSelf()V

    goto :goto_0
.end method
