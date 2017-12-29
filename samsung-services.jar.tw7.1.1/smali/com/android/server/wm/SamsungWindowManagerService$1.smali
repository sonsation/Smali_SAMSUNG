.class Lcom/android/server/wm/SamsungWindowManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/SamsungWindowManagerService;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$1;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.action.DEBUG_RECONFIGURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const-string v2, "WM_DEBUG"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 240
    .local v1, "wm_debug":[Z
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerDebugConfig;->reconfigureDebug([Z)V

    .line 236
    .end local v1    # "wm_debug":[Z
    :cond_0
    return-void
.end method
