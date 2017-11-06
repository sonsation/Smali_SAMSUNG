.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MusicMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1031
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ACTION_INITIALIZE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1033
    const-string v3, "MusicMainActivity-"

    const-string v4, "mSamsungAnalyticsReceiver"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v3, "EXTRA_FROM"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "sentObject":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1037
    const-string v3, "MusicMainActivity-"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSamsungAnalyticsReceiver - from : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$500(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)V

    .line 1041
    invoke-static {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->setSettingsAnalytics(Landroid/content/Context;)V

    .line 1042
    invoke-static {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->setDailyLogging(Landroid/content/Context;)V

    .line 1048
    .end local v1    # "sentObject":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1043
    :cond_2
    const-string v3, "com.samsung.android.app.music.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1044
    const-string v3, "extra_user_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$6;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    .line 1046
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->initSamsungAnalytics(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_0
.end method
