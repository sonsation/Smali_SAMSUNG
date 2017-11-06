.class public Lcom/samsung/android/app/music/common/ActivityLauncher;
.super Landroid/app/Activity;
.source "ActivityLauncher.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/ActivityLauncherAction;
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-ExtraLauncher"

.field private static final TAG:Ljava/lang/String; = "ExtraLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getLaunchMusicIntent(ZI)Landroid/content/Intent;
    .locals 2
    .param p0, "launchPlayerView"    # Z
    .param p1, "tag"    # I

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "launchMusicPlayer"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method private getMainActivityLaunchIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/common/activity/MusicMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v0, "main":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 439
    return-object v0
.end method

.method private getPlayerLaunchIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .local v0, "player":Landroid/content/Intent;
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    const-string v1, "is_enable_transition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    return-object v0
.end method

.method private getTrackLaunchIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 454
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    .line 455
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->getIntentStartTrackActivity(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    .line 456
    .local v6, "track":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    return-object v6
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 22
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 136
    .local v5, "context":Landroid/content/Context;
    const-string v19, "ExtraLauncher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleIntent: intent : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/app/music/common/ActivityLauncher;->hasPermissionWithAction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v19, "com.samsung.android.app.music.ACTION_WRITE_STORAGE_PERMISSION_GRANTED"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 146
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 149
    :cond_2
    if-nez v4, :cond_3

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startRecentActivity()V

    goto :goto_0

    .line 151
    :cond_3
    const-string v19, "com.sec.android.app.music.intent.action.S_FIND"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 152
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/app/music/common/util/player/SFinderPlayUtils;->play(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_4
    const-string v19, "com.sec.android.app.music.intent.action.PLAY_VIA"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 154
    const-string v19, "launchMusicPlayer"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 156
    .local v9, "launchMusic":Z
    const-string v19, "ExtraLauncher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " launch music : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/player/PlayUtils;->playVia(Landroid/content/Context;Landroid/content/Intent;)V

    .line 160
    if-eqz v9, :cond_0

    .line 161
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startMainActivity(Landroid/content/Context;Z)V

    goto :goto_0

    .line 163
    .end local v9    # "launchMusic":Z
    :cond_5
    const-string v19, "com.sec.android.app.music.musicservicecommand.play"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, "com.sec.android.music.intent.action.PLAY"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 164
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    goto/16 :goto_0

    .line 165
    :cond_7
    const-string v19, "com.sec.android.app.music.musicservicecommand.playprevious"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "com.sec.android.app.music.intent.action.PLAY_PREVIOUS"

    .line 166
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 167
    :cond_8
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    goto/16 :goto_0

    .line 168
    :cond_9
    const-string v19, "com.sec.android.app.music.musicservicecommand.playnext"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "com.sec.android.app.music.intent.action.PLAY_NEXT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 169
    :cond_a
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    goto/16 :goto_0

    .line 170
    :cond_b
    const-string v19, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 171
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 172
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityClearTop(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 173
    :cond_c
    const-string v19, "com.sec.android.app.music.intent.action.STOP"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 177
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    goto/16 :goto_0

    .line 178
    :cond_d
    const-string v19, "com.sec.android.app.music.intent.action.SUFFLE_ON"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 179
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->setShuffleMode(Z)V

    goto/16 :goto_0

    .line 180
    :cond_e
    const-string v19, "com.sec.android.app.music.intent.action.SUFFLE_OFF"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 181
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->setShuffleMode(Z)V

    goto/16 :goto_0

    .line 182
    :cond_f
    const-string v19, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 183
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/player/GoogleSearchPlayUtils;->play(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 185
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startMainActivity(Landroid/content/Context;Z)V

    .line 186
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityClearTop(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 189
    :cond_10
    const-string/jumbo v19, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "query":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->startQueryBrowserActivity(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    .end local v14    # "query":Ljava/lang/String;
    :cond_11
    const-string v19, "com.samsung.android.sconnect.action.MUSIC_DMR"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 193
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/QuickConnectPlayUtils;->play(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 194
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->startActivityClearTop(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 195
    :cond_12
    const-string v19, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 200
    const-string v19, "launchMusicPlayer"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 201
    .local v10, "launchPlayer":Z
    if-eqz v10, :cond_13

    .line 202
    const-string/jumbo v19, "tag"

    const/16 v20, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 203
    .local v18, "tag":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v5, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->loggingMusicLaunch(Landroid/content/Context;I)V

    .line 205
    .end local v18    # "tag":I
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/app/music/common/ActivityLauncher;->isRadioActivated(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v12

    .line 207
    .local v12, "main":Landroid/content/Intent;
    const-string v19, "launchMusicPlayerWithRadio"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 210
    .end local v12    # "main":Landroid/content/Intent;
    :cond_14
    if-eqz v10, :cond_15

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->launchMusicWithPlayer()V

    goto/16 :goto_0

    .line 213
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v12

    .line 214
    .restart local v12    # "main":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    .end local v10    # "launchPlayer":Z
    .end local v12    # "main":Landroid/content/Intent;
    :cond_16
    const-string v19, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC_MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v12

    .line 219
    .restart local v12    # "main":Landroid/content/Intent;
    const-string v19, "launchMusicPlayerWithRadio"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 220
    .local v16, "selectRadio":Z
    const-string v19, "launchMusicPlayerWithRadio"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    .end local v12    # "main":Landroid/content/Intent;
    .end local v16    # "selectRadio":Z
    :cond_17
    const-string v19, "com.sec.android.app.music.intent.action.LAUNCH_DETAIL_LIST"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 223
    const-string v19, "launchListType"

    const/16 v20, -0x1

    .line 224
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string v20, "launchListID"

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "launchListName"

    .line 226
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 223
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/ActivityLauncher;->launchMusicWithDetailLists(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_18
    const-string v19, "com.sec.android.app.music.intent.action.LAUNCH_FROM_SHORTCUT"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 228
    const-string v19, "launchListType"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 229
    .local v11, "listType":I
    const-string v19, "launchListID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 230
    .local v17, "sourceKeyword":Ljava/lang/String;
    const-string v19, "launchListName"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, "name":Ljava/lang/String;
    const-string v19, "launchListGroup"

    const/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 234
    .local v6, "groupType":I
    move-object/from16 v0, v17

    invoke-static {v5, v11, v0, v6}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->convertToKeyword(Landroid/content/Context;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 236
    .local v8, "keyword":Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/app/music/common/util/ListUtils;->getMatchedLibraryListType(I)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v5, v0, v8, v13, v6}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->isValidShortcut(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v13, v6}, Lcom/samsung/android/app/music/common/ActivityLauncher;->launchMusicWithDetailLists(ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 240
    :cond_19
    const-string v19, "ExtraLauncher"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "handleIntent() - ACTION_LAUNCH_FROM_SHORTCUT : There is no id for Music DB. listType:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " keyword:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " name:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v12

    .line 244
    .restart local v12    # "main":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 246
    .end local v6    # "groupType":I
    .end local v8    # "keyword":Ljava/lang/String;
    .end local v11    # "listType":I
    .end local v12    # "main":Landroid/content/Intent;
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "sourceKeyword":Ljava/lang/String;
    :cond_1a
    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->getSchemeType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v15

    .line 248
    .local v15, "schemeType":Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;
    if-eqz v15, :cond_0

    .line 249
    sget-object v19, Lcom/samsung/android/app/music/common/ActivityLauncher$1;->$SwitchMap$com$samsung$android$app$music$milk$deeplink$DeepLinkConstant$SchemeType:[I

    invoke-virtual {v15}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v20

    aget v19, v19, v20

    packed-switch v19, :pswitch_data_0

    goto/16 :goto_0

    .line 252
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v7

    .line 253
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    .line 255
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v19

    const/16 v20, 0x0

    const-string v21, "8151"

    .line 256
    invoke-virtual/range {v19 .. v21}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private hasMusicMainActivity()Z
    .locals 8

    .prologue
    .line 410
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 411
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 412
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-nez v4, :cond_1

    .line 413
    const-string v5, "SMUSIC-ExtraLauncher"

    const-string v6, "hasMusicMainActivity : list is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v2, 0x0

    .line 429
    :cond_0
    :goto_0
    return v2

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getTaskId()I

    move-result v1

    .line 418
    .local v1, "currentTaskId":I
    const/4 v2, 0x0

    .line 419
    .local v2, "hasMusicMain":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 420
    .local v3, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v6, Lcom/sec/android/app/music/common/activity/MusicMainActivity;->MAIN_ACTIVITY_NAME:Ljava/lang/String;

    iget-object v7, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 421
    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v1, v6, :cond_2

    .line 424
    const/4 v2, 0x1

    .line 425
    goto :goto_0
.end method

.method private hasPermissionWithAction(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v0, v2

    .line 289
    .local v0, "requiredPermissions":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isRadioActivated(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 269
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v5, :cond_1

    move v3, v4

    .line 283
    :cond_0
    :goto_0
    return v3

    .line 272
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    .line 273
    .local v1, "dataCenter":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 274
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 275
    .local v0, "activeQueue":I
    if-eq v0, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 278
    .end local v0    # "activeQueue":I
    :cond_2
    const-string v5, "music_service_pref"

    const/4 v6, 0x4

    .line 279
    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 281
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "queue_type"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 283
    .restart local v0    # "activeQueue":I
    if-eq v0, v3, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private launchMusicWithDetailLists(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->launchMusicWithDetailLists(ILjava/lang/String;Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method private launchMusicWithDetailLists(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "listType"    # I
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "groupType"    # I

    .prologue
    .line 298
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v8

    .line 303
    .local v8, "main":Landroid/content/Intent;
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    .line 305
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v7

    .line 307
    .local v7, "isMyMusicMode":Z
    sparse-switch p1, :sswitch_data_0

    .line 331
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getTrackLaunchIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 332
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 309
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_0
    const/4 v4, 0x1

    const/high16 v5, 0x24000000

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_0

    .line 313
    :sswitch_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p3, v2}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 316
    :sswitch_2
    if-nez v7, :cond_0

    .line 317
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ARTIST:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 321
    :sswitch_3
    if-nez v7, :cond_0

    .line 322
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->ALBUM:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 326
    :sswitch_4
    if-nez v7, :cond_0

    .line 327
    sget-object v0, Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;->PICK_DETAIL:Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;

    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/music/milk/store/StorePageLauncher;->moveDetail(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/StorePageLauncher$StorePageType;Ljava/lang/String;)Z

    goto :goto_0

    .line 307
    :sswitch_data_0
    .sparse-switch
        0x54 -> :sswitch_2
        0x55 -> :sswitch_3
        0x56 -> :sswitch_4
        0x100002 -> :sswitch_1
        0x100003 -> :sswitch_0
    .end sparse-switch
.end method

.method private launchMusicWithPlayer()V
    .locals 3

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->hasMusicMainActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getPlayerLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 348
    .local v1, "player":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    .line 356
    :goto_0
    return-void

    .line 351
    .end local v1    # "player":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    .line 352
    .local v0, "main":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getPlayerLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    .line 354
    .restart local v1    # "player":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private loggingMusicLaunch(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # I

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 390
    :goto_0
    :pswitch_0
    return-void

    .line 361
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLockScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "ENFP"

    const-string v1, "Lockscreen mini player"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_1
    const-string v0, ""

    const-string v1, "6191"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_0
    const-string v0, "ENFP"

    const-string v1, "Quick panel player"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :pswitch_2
    const-string v0, "ENFP"

    const-string v1, "Widget"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v0, "517"

    const-string v1, "6131"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_3
    const-string v0, "ENFP"

    const-string v1, "Lockscreen player"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_4
    const-string v0, "521"

    const-string v1, "6211"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private setShuffleMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 461
    const-string v0, "ExtraLauncher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShuffleMode() - on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->setShuffle(Z)V

    .line 463
    return-void
.end method

.method private startRecentActivity()V
    .locals 7

    .prologue
    .line 393
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 394
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 395
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "localClassName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 398
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "com.sec.android.app.music"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 399
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 400
    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 407
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "localClassName":Ljava/lang/String;
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getMainActivityLaunchIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/common/ActivityLauncher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    const-string v2, "ExtraLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, "i":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->finish()V

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->finish()V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SMUSIC-ExtraLauncher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error happened: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "ExtraLauncher"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v1, "ExtraLauncher"

    const-string/jumbo v2, "onNewIntent"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->finish()V

    .line 119
    :goto_0
    return-void

    .line 110
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/ActivityLauncher;->handleIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->finish()V

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SMUSIC-ExtraLauncher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error happened: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "ExtraLauncher"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/ActivityLauncher;->finish()V

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    return-void
.end method
