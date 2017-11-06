.class public final Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;
.super Ljava/lang/Object;
.source "MilkPlayingUri.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExtraData:Landroid/os/Bundle;

.field private mIsCancel:Z

.field private mOnlineUri:Landroid/net/Uri;

.field private mPriority:I

.field private final mSourceId:Ljava/lang/String;

.field private final mStationId:Ljava/lang/String;

.field private mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "stationId"    # Ljava/lang/String;
    .param p4, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mIsCancel:Z

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mSourceId:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStationId:Ljava/lang/String;

    .line 74
    if-nez p4, :cond_0

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static createModPlayingUri(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static createRadioPlayingUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceId"    # Ljava/lang/String;
    .param p2, "stationId"    # Ljava/lang/String;
    .param p3, "extraData"    # Landroid/os/Bundle;

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getErrorCode(I)I
    .locals 2
    .param p1, "requestType"    # I
    .annotation build Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$ERROR$ExtraDef;
    .end annotation

    .prologue
    .line 275
    sparse-switch p1, :sswitch_data_0

    .line 302
    const-string v0, "SMUSIC-SV-Player"

    const-string v1, "onSourceUpdateError : not defined error."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 281
    :sswitch_0
    const/16 v0, -0xf

    goto :goto_0

    .line 287
    :sswitch_1
    const/16 v0, -0x12

    goto :goto_0

    .line 289
    :sswitch_2
    const/16 v0, -0x21

    goto :goto_0

    .line 291
    :sswitch_3
    const/16 v0, -0x13

    goto :goto_0

    .line 300
    :sswitch_4
    const/16 v0, -0x14

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        -0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0xfa0 -> :sswitch_4
        0x1005 -> :sswitch_4
        0x1006 -> :sswitch_4
        0x1389 -> :sswitch_1
        0x138a -> :sswitch_1
        0x138b -> :sswitch_3
        0x138c -> :sswitch_4
        0x138d -> :sswitch_4
        0x13ec -> :sswitch_4
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_0
        0x2715 -> :sswitch_0
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_0
        0x32c8 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resultCode"    # I

    .prologue
    const v2, 0x7f0a039c

    .line 207
    sparse-switch p1, :sswitch_data_0

    .line 258
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_1

    .line 259
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "message":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 209
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_0
    const v1, 0x7f0a0415

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_1
    const v1, 0x7f0a0418

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 217
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_2
    const v1, 0x7f0a0416

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 221
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_3
    const v1, 0x7f0a0417

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_4
    const v1, 0x7f0a0419

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_5
    const v1, 0x7f0a0298

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 230
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_6
    const v1, 0x7f0a02ec

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_7
    const v1, 0x7f0a02d5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 236
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_8
    const v1, 0x7f0a0287

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 239
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_9
    const v1, 0x7f0a02dc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 242
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_a
    const v1, 0x7f0a040d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 255
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_c
    const v1, 0x7f0a0318

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 262
    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0a0305

    .line 263
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 207
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_a
        -0x2 -> :sswitch_b
        0x3 -> :sswitch_9
        0xfa0 -> :sswitch_b
        0x1005 -> :sswitch_b
        0x1006 -> :sswitch_b
        0x1389 -> :sswitch_b
        0x138a -> :sswitch_7
        0x138b -> :sswitch_8
        0x138c -> :sswitch_b
        0x138d -> :sswitch_b
        0x13ec -> :sswitch_b
        0x2711 -> :sswitch_4
        0x2712 -> :sswitch_3
        0x2715 -> :sswitch_1
        0x2716 -> :sswitch_2
        0x2717 -> :sswitch_0
        0x32c8 -> :sswitch_5
        0x36b0 -> :sswitch_6
        0x3a98 -> :sswitch_c
    .end sparse-switch
.end method

.method private getMilkCacheSize()J
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getStreamingCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMilkPlayingUri(I)Landroid/net/Uri;
    .locals 24
    .param p1, "priority"    # I

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mIsCancel:Z

    if-eqz v3, :cond_0

    .line 110
    const/4 v3, 0x0

    .line 193
    :goto_0
    return-object v3

    .line 112
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mOnlineUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mPriority:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mOnlineUri:Landroid/net/Uri;

    goto :goto_0

    .line 120
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    if-nez v3, :cond_2

    .line 121
    new-instance v3, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    .line 125
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getSettingQuality()I

    move-result v18

    .line 126
    .local v18, "settingQuality":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStationId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mSourceId:Ljava/lang/String;

    move/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->getMilkPlayingData(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v13

    .line 132
    .local v13, "playingData":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mIsCancel:Z

    if-eqz v3, :cond_4

    .line 133
    const/4 v3, 0x0

    goto :goto_0

    .line 129
    .end local v13    # "playingData":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStreamingUrlReceiver:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mStationId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mSourceId:Ljava/lang/String;

    .line 130
    move/from16 v0, v18

    invoke-virtual {v3, v4, v5, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;->getMilkRadioPlayingData(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v13

    .restart local v13    # "playingData":Landroid/os/Bundle;
    goto :goto_1

    .line 135
    :cond_4
    if-eqz v13, :cond_6

    const-string v3, "extra_message_code"

    const/4 v4, -0x1

    .line 136
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 138
    .local v16, "requestType":I
    :goto_2
    const/4 v3, -0x1

    move/from16 v0, v16

    if-le v0, v3, :cond_7

    .line 139
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    .line 140
    move/from16 v0, v16

    invoke-static {v4, v0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v16

    invoke-static {v3, v0, v4}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayerMessageFactory;->createMessage(Landroid/os/Bundle;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 141
    .local v10, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    const-string v4, "player_extra_message"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    const/16 v3, 0x32c8

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "8141"

    .line 144
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;)V

    .line 146
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getErrorCode(I)I

    move-result v12

    .line 147
    .local v12, "errorCode":I
    const/4 v3, -0x1

    if-ge v12, v3, :cond_7

    .line 148
    const-string/jumbo v3, "streaming_server_error"

    .line 149
    invoke-static {v3, v12}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->getErrorUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 136
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "errorCode":I
    .end local v16    # "requestType":I
    :cond_6
    const/16 v16, -0x1

    goto :goto_2

    .line 153
    .restart local v16    # "requestType":I
    :cond_7
    if-eqz v13, :cond_8

    const-string v3, "extra_url"

    .line 154
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 155
    .local v21, "url":Ljava/lang/String;
    :goto_3
    if-nez v21, :cond_9

    .line 156
    const-string/jumbo v3, "streaming_server_error"

    const/16 v4, -0xe

    .line 157
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->getErrorUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 154
    .end local v21    # "url":Ljava/lang/String;
    :cond_8
    const/16 v21, 0x0

    goto :goto_3

    .line 159
    .restart local v21    # "url":Ljava/lang/String;
    :cond_9
    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 160
    .local v20, "uri":Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAudioQuality(Landroid/net/Uri;)I

    move-result v14

    .line 161
    .local v14, "quality":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mSourceId:Ljava/lang/String;

    .line 162
    invoke-static/range {v20 .. v20}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isFullSong(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    const/4 v5, 0x3

    invoke-static {v4, v14, v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->buildStreamingId(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "streamingId":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri$1;-><init>(Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const-string v7, "0"

    const/4 v8, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getMilkCacheSize()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v8, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;->obtain(ZJ)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;

    move-result-object v8

    .line 164
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;->obtain(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$UrlRetriever;JILjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest$Options;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    move-result-object v15

    .line 175
    .local v15, "r":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mPriority:I

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/streaming/v2/MediaProxyServerFactory;->obtainMediaProxyServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;

    move-result-object v17

    .line 177
    .local v17, "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mIsCancel:Z

    if-eqz v3, :cond_b

    .line 178
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 162
    .end local v2    # "streamingId":Ljava/lang/String;
    .end local v15    # "r":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .end local v17    # "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    .line 180
    .restart local v2    # "streamingId":Ljava/lang/String;
    .restart local v15    # "r":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;
    .restart local v17    # "server":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    const-string v4, "player_extra_content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 181
    .local v11, "content":Landroid/os/Bundle;
    if-nez v11, :cond_c

    .line 182
    new-instance v11, Landroid/os/Bundle;

    .end local v11    # "content":Landroid/os/Bundle;
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 183
    .restart local v11    # "content":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    const-string v4, "player_extra_content"

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    :cond_c
    if-eqz v13, :cond_e

    const-string v3, "extra_settlement"

    .line 186
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 188
    .local v19, "settle":Ljava/lang/String;
    :goto_5
    if-eqz v19, :cond_d

    .line 189
    const-string/jumbo v3, "settlement_ext"

    move-object/from16 v0, v19

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_d
    new-instance v9, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;

    invoke-direct {v9, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;-><init>(Landroid/os/Bundle;)V

    .line 192
    .local v9, "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;
    invoke-static {v14}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->convertQuality(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;->setQuality(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;

    .line 193
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/MediaServer2;->requestUri(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;I)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mOnlineUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 186
    .end local v9    # "builder":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/PlayerContent$Builder;
    .end local v19    # "settle":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    goto :goto_5
.end method

.method private getSettingQuality()I
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    const v1, 0x80002

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getListenQuality(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->reset()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mIsCancel:Z

    .line 106
    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mExtraData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->getMilkPlayingUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mOnlineUri:Landroid/net/Uri;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/MilkPlayingUri;->mPriority:I

    .line 100
    return-void
.end method
