.class Lcom/android/launcher3/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->finishSettingsActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 3071
    iput-object p1, p0, Lcom/android/launcher3/Launcher$17;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3075
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v1

    .line 3076
    .local v1, "settingsActivity":Lcom/android/launcher3/SettingsActivity;
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3077
    invoke-virtual {v1}, Lcom/android/launcher3/SettingsActivity;->finish()V

    .line 3078
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    .line 3082
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonSettingsActivity()Lcom/android/launcher3/home/AppsButtonSettingsActivity;

    move-result-object v0

    .line 3083
    .local v0, "appsbuttonActivity":Lcom/android/launcher3/home/AppsButtonSettingsActivity;
    if-eqz v0, :cond_1

    .line 3084
    invoke-virtual {v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    .line 3085
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    .line 3087
    :cond_1
    return-void
.end method
