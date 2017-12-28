.class Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;
.super Landroid/content/BroadcastReceiver;
.source "SSecureUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/SSecureUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplockStateChangedRecevier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/SSecureUpdater;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/util/SSecureUpdater;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/SSecureUpdater;Lcom/android/launcher3/util/SSecureUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/util/SSecureUpdater;
    .param p2, "x1"    # Lcom/android/launcher3/util/SSecureUpdater$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;-><init>(Lcom/android/launcher3/util/SSecureUpdater;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 67
    const-string v7, "android.intent.extra.SUBJECT"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 68
    .local v6, "value":Z
    const-string v7, "SSecureUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applock enabled value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v7, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-static {v7}, Lcom/android/launcher3/util/SSecureUpdater;->access$400(Lcom/android/launcher3/util/SSecureUpdater;)Z

    move-result v7

    if-eq v6, v7, :cond_2

    .line 70
    iget-object v7, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-static {v7, v6}, Lcom/android/launcher3/util/SSecureUpdater;->access$402(Lcom/android/launcher3/util/SSecureUpdater;Z)Z

    .line 71
    const-string v7, "SSecureUpdater"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAppLockEnabled "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-static {v9}, Lcom/android/launcher3/util/SSecureUpdater;->access$400(Lcom/android/launcher3/util/SSecureUpdater;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v4, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-static {v7}, Lcom/android/launcher3/util/SSecureUpdater;->access$500(Lcom/android/launcher3/util/SSecureUpdater;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "applock_locked_apps_packages"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "lockedPackages":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/util/SSecureUpdater$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/util/SSecureUpdater;

    invoke-static {v7}, Lcom/android/launcher3/util/SSecureUpdater;->access$500(Lcom/android/launcher3/util/SSecureUpdater;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ssecure_hidden_apps_packages"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "hiddenPackages":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 77
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_0
    if-eqz v1, :cond_1

    .line 84
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v5, v1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .restart local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    .line 92
    .local v2, "launcherModel":Lcom/android/launcher3/LauncherModel;
    new-instance v8, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-direct {v8, v2, v9, v7, v10}, Lcom/android/launcher3/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher3/LauncherModel;I[Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v8}, Lcom/android/launcher3/LauncherModel;->enqueueItemUpdatedTask(Ljava/lang/Runnable;)V

    .line 96
    .end local v1    # "hiddenPackages":Ljava/lang/String;
    .end local v2    # "launcherModel":Lcom/android/launcher3/LauncherModel;
    .end local v3    # "lockedPackages":Ljava/lang/String;
    .end local v4    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "value":Z
    :cond_2
    return-void
.end method
