.class Lcom/android/server/am/MultiWindowManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowManagerService;->systemBooted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v1}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MultiWindowManagerService"

    const-string v2, "Ignore the request to minimize all in desktop mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService$3;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowManagerService$H;->sendEmptyMessage(I)Z

    .line 383
    :cond_3
    return-void
.end method
