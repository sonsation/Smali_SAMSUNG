.class Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;
.super Ljava/lang/Object;
.source "AppUpdateChecker.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/AppUpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(II)V
    .locals 11
    .param p1, "resultCode"    # I
    .param p2, "deployedVersionCode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 53
    invoke-static {}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mAppUpdateCheckListener() Have got update status : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  resultVersionCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-eqz v8, :cond_1

    .line 59
    iget-object v8, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .line 60
    invoke-static {v8}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "music_player_pref"

    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 62
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 63
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    if-ne p1, v7, :cond_0

    move v6, v7

    :cond_0
    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    if-ne p1, v7, :cond_4

    .line 69
    iget-object v6, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .line 70
    invoke-static {v6}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v6

    const-string v8, "com.samsung.radio.start_client.force_update_version"

    const-string v9, ""

    invoke-static {v6, v8, v9}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "forceVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 73
    iget-object v6, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .line 74
    invoke-static {v6}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-static {v8}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$100(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "curVersion":I
    if-gez v0, :cond_2

    .line 76
    invoke-static {}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mAppUpdateCheckListener() fail to get current version "

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v0    # "curVersion":I
    .end local v4    # "forceVersion":Ljava/lang/String;
    :goto_0
    return-void

    .line 80
    .restart local v0    # "curVersion":I
    .restart local v4    # "forceVersion":Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 82
    .local v2, "force":J
    int-to-long v8, v0

    cmp-long v6, v2, v8

    if-lez v6, :cond_3

    .line 83
    iget-object v6, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$202(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;Z)Z

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mAppUpdateCheckListener() force update"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "curVersion":I
    .end local v2    # "force":J
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    goto :goto_0

    .line 89
    .end local v4    # "forceVersion":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;->this$0:Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->setAppUpdateStatus(I)V

    goto :goto_0
.end method
