.class Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "SViewCoverWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 63
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceive : Wallpaper changed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "s_view_cover_skin_color"

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 67
    .local v0, "currentCoverColor":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v1}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "s_view_cover_skin_color"

    iget-object v3, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v3}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v3

    .line 68
    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    .line 62
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 75
    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 73
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    goto :goto_0
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 102
    return-void
.end method

.method public onOpenThemeChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 106
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 98
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 5
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    .line 83
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserSwitched() newUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " oldUserId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap3(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 85
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 86
    .local v1, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 87
    :cond_0
    invoke-static {}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "It\'s Knox UserSwitching"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap0(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Ljava/io/File;

    .line 90
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-wrap2(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager$1;->this$0:Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;

    invoke-static {v2}, Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;->-get1(Lcom/sec/android/cover/manager/SViewCoverWallpaperManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
