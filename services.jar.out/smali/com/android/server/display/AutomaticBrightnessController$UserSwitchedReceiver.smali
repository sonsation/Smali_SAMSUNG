.class final Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1716
    const-string/jumbo v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UserSwitchedReceiver: onReceive: UserHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1717
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1717
    const-string/jumbo v2, " -> "

    .line 1716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1717
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->-get14(Lcom/android/server/display/AutomaticBrightnessController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1719
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-set10(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 1720
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$UserSwitchedReceiver;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->-wrap7(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1715
    return-void

    .line 1718
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
