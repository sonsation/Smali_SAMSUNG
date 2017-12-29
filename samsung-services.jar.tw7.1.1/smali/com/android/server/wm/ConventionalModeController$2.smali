.class Lcom/android/server/wm/ConventionalModeController$2;
.super Landroid/content/BroadcastReceiver;
.source "ConventionalModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ConventionalModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ConventionalModeController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ConventionalModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ConventionalModeController;

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/server/wm/ConventionalModeController$2;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 633
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 634
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 635
    :goto_0
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 636
    .local v3, "replacing":Z
    const-string v5, "android.intent.extra.UID"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 637
    .local v4, "uid":I
    if-eqz v1, :cond_0

    if-ne v4, v8, :cond_2

    .line 638
    :cond_0
    return-void

    .line 634
    .end local v3    # "replacing":Z
    .end local v4    # "uid":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "pkg":Ljava/lang/String;
    goto :goto_0

    .line 637
    .end local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "replacing":Z
    .restart local v4    # "uid":I
    :cond_2
    if-eqz v3, :cond_0

    .line 641
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x80

    invoke-interface {v5, v1, v7, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 642
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3

    .line 643
    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController$2;->this$0:Lcom/android/server/wm/ConventionalModeController;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ConventionalModeController;->isMaxAspectPackage(Landroid/content/pm/ApplicationInfo;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 644
    iget-object v5, p0, Lcom/android/server/wm/ConventionalModeController$2;->this$0:Lcom/android/server/wm/ConventionalModeController;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/android/server/wm/ConventionalModeController;->setMaxAspectPackage(Ljava/lang/String;IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "replacing":Z
    .end local v4    # "uid":I
    :cond_3
    :goto_1
    return-void

    .line 647
    .restart local v3    # "replacing":Z
    .restart local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 648
    .local v2, "re":Landroid/os/RemoteException;
    const-string v5, "ConventionalModeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get aInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
