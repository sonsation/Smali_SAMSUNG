.class public Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl;
.super Ljava/lang/Object;
.source "MilkStreamingUrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;,
        Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandSender;,
        Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_REQ_ADD_RADIO_HISTORY:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQ_ADD_RADIO_HISTORY"

.field private static final ACTION_REQ_RADIO:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQUEST_RADIO"

.field private static final ACTION_REQ_RADIO_QUEUE:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQ_RADIO_QUEUE"

.field public static final ACTION_REQ_RESET_DORMANCY:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQ_RESET_DORMANCY"

.field private static final ACTION_REQ_SETTLEMENT:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQUEST_SETTLEMENT"

.field private static final ACTION_REQ_SONG:Ljava/lang/String; = "com.samsung.android.app.music.action.ACTION_REQUEST_SONG"

.field private static final DEFAULT_APP_ID:I = -0x1

.field private static final DORMANCY_NOTIF_ID_INIT:I = 0xc7a7

.field private static final EXTRA_AUDIO_QUALITY:Ljava/lang/String; = "extra_audio_quality"

.field public static final EXTRA_CURRENT_TRACK:Ljava/lang/String; = "extra_current_track"

.field public static final EXTRA_MESSAGE_CODE:Ljava/lang/String; = "extra_message_code"

.field private static final EXTRA_MESSENGER:Ljava/lang/String; = "extra_messenger"

.field public static final EXTRA_NEXT_REQ_ID:Ljava/lang/String; = "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

.field public static final EXTRA_NEXT_TRACK:Ljava/lang/String; = "extra_next_track"

.field private static final EXTRA_PLAYER_POSITION:Ljava/lang/String; = "extra_player_position"

.field public static final EXTRA_PREV_TRACK:Ljava/lang/String; = "extra_prev_track"

.field public static final EXTRA_SETTLEMENT:Ljava/lang/String; = "extra_settlement"

.field private static final EXTRA_STATION_ID:Ljava/lang/String; = "extra_station_id"

.field private static final EXTRA_TIME:Ljava/lang/String; = "extra_time"

.field private static final EXTRA_TRACK_ID:Ljava/lang/String; = "extra_track_id"

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerServer"

.field private static final SUB_TAG:Ljava/lang/String; = "MilkStreamingUrl: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerServer"

.field private static final WAIT_TIME_OUT:J = 0x2710L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
