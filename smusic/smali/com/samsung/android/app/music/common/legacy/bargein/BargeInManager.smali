.class public Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "BargeInManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    }
.end annotation


# static fields
.field public static final ACTION_INTENT_LAUNCH_VOICE_SETTING_BARGEIN:Ljava/lang/String; = "android.intent.action.VOICE_SETTING_BARGEIN"

.field private static final KEY_HDMI_AUDIO_OUTPUT:Ljava/lang/String; = "hdmi_audio_output"

.field private static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field public static final KEY_VOICE_INPUT_CONTROL_MUSIC:Ljava/lang/String; = "voice_input_control_music"

.field private static final MUSIC_APP_COMMAND:I = 0x4

.field private static final MUSIC_SPEECH_NEXT:I = 0x1

.field private static final MUSIC_SPEECH_PAUSE:I = 0x3

.field private static final MUSIC_SPEECH_PLAY:I = 0x4

.field private static final MUSIC_SPEECH_PREV:I = 0x2

.field private static final MUSIC_SPEECH_VOLUME_DOWN:I = 0x6

.field private static final MUSIC_SPEECH_VOLUME_UP:I = 0x5

.field private static final NOTI_STATUS:I = 0x7010010

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    .line 68
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mAudioManager:Landroid/media/AudioManager;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    new-instance v1, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;-><init>(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->InitBargeInRecognizer(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;)Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->sendMusicCommand(I)V

    return-void
.end method

.method private getInfo()Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 175
    new-instance v1, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;-><init>(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$1;)V

    .line 176
    .local v1, "info":Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "bargeInCommands":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0086

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, v0, v6

    aput-object v5, v4, v6

    aget-object v5, v0, v7

    aput-object v5, v4, v7

    aget-object v5, v0, v8

    aput-object v5, v4, v8

    aget-object v5, v0, v9

    aput-object v5, v4, v9

    aget-object v5, v0, v10

    aput-object v5, v4, v10

    const/4 v5, 0x5

    const/4 v6, 0x5

    aget-object v6, v0, v6

    aput-object v6, v4, v5

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$202(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$302(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    const v2, 0x7f02036c

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$402(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;I)I

    .line 185
    return-object v1
.end method

.method private hideBargeInNotification()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 214
    .local v0, "manager":Landroid/app/NotificationManager;
    const v1, 0x7010010

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 215
    return-void
.end method

.method public static isBargeInSettingEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isVoiceSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isMusicSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMusicSettingEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_input_control_music"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 230
    .local v0, "music":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isVoiceSettingEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voice_input_control"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "voice":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private sendMusicCommand(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v0, "next"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "pause"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_2
    const-string/jumbo v0, "previous"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_3
    const-string/jumbo v0, "play"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :pswitch_4
    const-string/jumbo v0, "volume_down"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_5
    const-string/jumbo v0, "volume_up"

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private showBargeInNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->getInfo()Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    move-result-object v0

    .line 160
    .local v0, "info":Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 161
    invoke-static {v4, v7, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 163
    .local v3, "pi":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$400(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 165
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$200(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$300(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 166
    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;->access$200(Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 169
    .local v2, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 171
    .local v1, "manager":Landroid/app/NotificationManager;
    const v4, 0x7010010

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 172
    return-void
.end method

.method private startRecognition()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 108
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 109
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : Intent action is ActivityNotFound "

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->isBargeInEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 113
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : BargeIn doesn\'t enable"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->isBargeInSettingEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : BargeIn setting was off"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : call is active(not idle), voice input will not start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    .line 133
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 134
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : key guard locked, voice input will not start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isFMActive(Landroid/media/AudioManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : FM radio activated, voice input will not start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isRecordActive(Landroid/media/AudioManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : Rec activated, voice input will not start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hdmi_audio_output"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    .local v0, "hdmiValue":I
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isHdmiConnected(Landroid/media/AudioManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 150
    sget-object v3, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startRecognition : HDMI connected, voice input will not start"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->startBargeIn(I)V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->showBargeInNotification()V

    goto/16 :goto_0
.end method

.method private stopRecognition()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->mRecognizer:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->stopBargeIn()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->hideBargeInNotification()V

    .line 209
    return-void
.end method


# virtual methods
.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->stopRecognition()V

    .line 196
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;->startRecognition()V

    .line 191
    return-void
.end method
