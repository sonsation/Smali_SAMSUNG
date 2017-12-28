.class public Lcom/android/launcher3/ChameleonUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChameleonUpdateReceiver.java"


# static fields
.field private static final ACTION_CHAMELEON_UPDATE_LAUNCHER:Ljava/lang/String; = "com.samsung.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

.field private static final TAG:Ljava/lang/String; = "ChameleonUpdate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private resetDBForSprint(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 51
    const-string v3, "launcher.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v3, "ChameleonUpdate"

    const-string v4, "launcher db deleted successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "postposition.db"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    .local v1, "editor2":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    const-string v3, "ChameleonUpdate"

    const-string v4, "launcher/postposition db deleted successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 65
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/launcher3/Launcher;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v2, "home":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "editor2":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "home":Landroid/content/Intent;
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v3, "ChameleonUpdate"

    const-string v4, "fail to delete postposition.db"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_1
    const-string v3, "ChameleonUpdate"

    const-string v4, "Unable to delete launcher db"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v2, "com.samsung.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    const-string v2, "delete_db"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    .local v1, "deleteDB":Z
    const-string v2, "ChameleonUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received intent :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-eqz v1, :cond_0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/launcher3/ChameleonUpdateReceiver;->resetDBForSprint(Landroid/content/Context;)V

    goto :goto_0
.end method
