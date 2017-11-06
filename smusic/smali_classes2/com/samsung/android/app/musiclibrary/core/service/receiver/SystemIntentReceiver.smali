.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;
.super Ljava/lang/Object;
.source "SystemIntentReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_USER_SWITCHED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.music.dlna.connectivitychanged"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 75
    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "action":Ljava/lang/String;
    const-string v3, "SV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemReceiver action : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->reloadMeta()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pause()V

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    goto :goto_0

    .line 98
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    goto :goto_0

    .line 107
    :cond_3
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 110
    .local v19, "status":I
    const-string v3, "level"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 111
    .local v16, "level":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->batteryChanged(II)V

    goto :goto_0

    .line 112
    .end local v16    # "level":I
    .end local v19    # "status":I
    :cond_4
    sget-object v3, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 113
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/content/Intent;)I

    move-result v18

    .line 114
    .local v18, "state":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setWfdState(I)V

    goto :goto_0

    .line 115
    .end local v18    # "state":I
    :cond_5
    const-string v3, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->privateModeOff()V

    goto :goto_0

    .line 118
    :cond_6
    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 120
    .local v15, "event":I
    const/4 v3, 0x1

    if-eq v15, v3, :cond_7

    const/4 v3, 0x3

    if-ne v15, v3, :cond_0

    .line 123
    :cond_7
    const-string v3, "com.sec.android.app.music.dlna.extra.deviceId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "deviceId":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3, v15, v12}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaConnectionChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 127
    .end local v12    # "deviceId":Ljava/lang/String;
    .end local v15    # "event":I
    :cond_8
    const-string v3, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 128
    const-string/jumbo v3, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "dmrId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    const-string v3, "SMUSIC-SV"

    const-string v4, "mOtherDeviceReceiver ScreenSharing - DLNA_CONNECTION_REQUEST: dmrId is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 134
    :cond_9
    const-string v3, "player_type"

    const/4 v4, -0x1

    .line 135
    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 136
    .local v17, "playerType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move/from16 v0, v17

    invoke-interface {v3, v0, v13}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaConnectionRequested(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 137
    .end local v13    # "dmrId":Ljava/lang/String;
    .end local v17    # "playerType":I
    :cond_a
    const-string v3, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaDisconnectionRequested()V

    goto/16 :goto_0

    .line 139
    :cond_b
    const-string v3, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 140
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getSharedItemIds(Landroid/content/Context;Landroid/content/Intent;)[J

    move-result-object v5

    .line 141
    .local v5, "sharedItems":[J
    if-eqz v5, :cond_c

    array-length v3, v5

    if-nez v3, :cond_d

    .line 142
    :cond_c
    const-string v3, "SMUSIC-SV"

    const-string v4, "mOtherDeviceReceiver ScreenSharing - no shared items."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 146
    invoke-interface/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V

    goto/16 :goto_0

    .line 148
    .end local v5    # "sharedItems":[J
    :cond_e
    const-string v3, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->changeSetting(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 150
    :cond_f
    const-string v3, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

    .line 151
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 152
    :cond_10
    const-string v3, "easymode"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 153
    .local v14, "enable":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    if-eqz v14, :cond_11

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->easyModeEnabled(Z)V

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    goto :goto_1

    .line 154
    .end local v14    # "enable":Z
    :cond_12
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 156
    .local v20, "stream":I
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->volumeChanged()V

    goto/16 :goto_0
.end method
