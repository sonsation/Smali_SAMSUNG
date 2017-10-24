.class Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v2, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageStateReceiver, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_1
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set2(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    .line 359
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;)V

    .line 346
    :cond_2
    :goto_0
    return-void

    .line 361
    :cond_3
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    const-string/jumbo v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v2

    .line 362
    if-eqz v2, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-set2(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    .line 365
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v5, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    goto :goto_0
.end method
