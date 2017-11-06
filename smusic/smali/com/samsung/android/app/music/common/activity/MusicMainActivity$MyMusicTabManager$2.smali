.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1476
    const-string/jumbo v0, "tab_menu_list"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->refresh()V

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->access$1000(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.TAB_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1485
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    const-string v0, "com.sec.android.app.music.KEY_APP_UPDATE_BADGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager$2;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;->access$1000(Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicTabManager;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.action_app_update_badge_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
