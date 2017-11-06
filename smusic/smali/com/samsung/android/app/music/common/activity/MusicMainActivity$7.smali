.class Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
    .line 1320
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1323
    const-string v1, "my_music_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    .line 1325
    .local v0, "isMyMusicMode":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$600(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;I)V

    .line 1327
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->invalidateOptionsMenu()V

    .line 1328
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$700(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->access$700(Lcom/samsung/android/app/music/common/activity/MusicMainActivity;)Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$MyMusicModeTipHelper;->showTip()V

    .line 1332
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_1

    .line 1333
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MusicMainActivity$7;->this$0:Lcom/samsung/android/app/music/common/activity/MusicMainActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/common/gcm/PPMT/PpmtController;->changeMyMusicMode(Landroid/content/Context;Z)V

    .line 1336
    .end local v0    # "isMyMusicMode":Z
    :cond_1
    return-void

    .line 1325
    .restart local v0    # "isMyMusicMode":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
