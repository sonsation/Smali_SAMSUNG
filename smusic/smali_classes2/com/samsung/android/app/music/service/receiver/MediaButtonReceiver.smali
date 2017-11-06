.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# static fields
.field private static final ACCEPT_ONLY_DOWN_UP:Z = true

.field private static final CLICK_INTERVAL:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MusicButton"

.field private static final RESET_CLICK_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicButton"

.field private static final mRequiredPermissions:[Ljava/lang/String;

.field private static sClickCount:J

.field private static sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private static sDown:Z

.field private static sLastClickTime:J

.field private static final sMediaButtonClickHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 42
    sput-boolean v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    .line 47
    sput-wide v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sLastClickTime:J

    .line 49
    sput-wide v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->mRequiredPermissions:[Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    sput-wide p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    return-wide p0
.end method

.method private getMusicCommand(I)Ljava/lang/String;
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "command":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 300
    :goto_0
    return-object v0

    .line 274
    :sswitch_0
    const-string/jumbo v0, "togglepause"

    .line 275
    goto :goto_0

    .line 277
    :sswitch_1
    const-string v0, "play"

    .line 278
    goto :goto_0

    .line 280
    :sswitch_2
    const-string v0, "pause"

    .line 281
    goto :goto_0

    .line 283
    :sswitch_3
    const-string v0, "next"

    .line 284
    goto :goto_0

    .line 286
    :sswitch_4
    const-string v0, "previous"

    .line 287
    goto :goto_0

    .line 289
    :sswitch_5
    const-string/jumbo v0, "rewind"

    .line 290
    goto :goto_0

    .line 292
    :sswitch_6
    const-string v0, "fastforward"

    .line 293
    goto :goto_0

    .line 295
    :sswitch_7
    const-string/jumbo v0, "stop"

    .line 296
    goto :goto_0

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_7
        0x57 -> :sswitch_3
        0x58 -> :sswitch_4
        0x59 -> :sswitch_5
        0x5a -> :sswitch_6
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private getMusicCommandTag(I)I
    .locals 1
    .param p1, "keycode"    # I

    .prologue
    .line 305
    sparse-switch p1, :sswitch_data_0

    .line 314
    const/16 v0, 0x64

    .line 317
    .local v0, "tag":I
    :goto_0
    return v0

    .line 307
    .end local v0    # "tag":I
    :sswitch_0
    const/16 v0, 0x6b

    .line 308
    .restart local v0    # "tag":I
    goto :goto_0

    .line 311
    .end local v0    # "tag":I
    :sswitch_1
    const/16 v0, 0x6c

    .line 312
    .restart local v0    # "tag":I
    goto :goto_0

    .line 305
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_1
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method private handleForwardRewind(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "action"    # I
    .param p4, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 201
    if-nez p3, :cond_3

    .line 207
    sget-boolean v5, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    if-nez v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 208
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    .line 210
    .local v2, "time":J
    sput-boolean v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    .line 211
    sput-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sLastClickTime:J

    .line 212
    sget-object v5, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v5, :cond_0

    .line 213
    sget-object v5, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 215
    :cond_0
    const-string v5, "fastforward"

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 217
    .local v0, "direction":I
    :goto_0
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-instance v6, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    sput-object v5, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 235
    sget-object v5, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 267
    .end local v0    # "direction":I
    .end local v2    # "time":J
    :cond_1
    :goto_1
    return-void

    .restart local v2    # "time":J
    :cond_2
    move v0, v4

    .line 215
    goto :goto_0

    .line 238
    .end local v2    # "time":J
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v1, :cond_4

    .line 239
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 241
    :cond_4
    sput-boolean v7, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    .line 244
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sLastClickTime:J

    goto :goto_1
.end method

.method private handleMediaKey(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 66
    .local v2, "event":Landroid/view/KeyEvent;
    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 71
    .local v3, "keycode":I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 73
    .local v4, "action":I
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->getMusicCommand(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "command":Ljava/lang/String;
    const-string v0, "MusicButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMediaKey() keycode : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " action : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " command : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    if-eqz v5, :cond_0

    .line 83
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    .line 84
    .local v6, "am":Landroid/media/AudioManager;
    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    const-string v0, "SMUSIC-MusicButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBluetoothA2dpOn() is false, playing with speaker and key code : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->mRequiredPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    const/16 v0, 0x59

    if-eq v3, v0, :cond_3

    const/16 v0, 0x5a

    if-ne v3, v0, :cond_5

    .line 106
    :cond_3
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->handleForwardRewind(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V

    .line 117
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->isOrderedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->abortBroadcast()V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->handleNormalKey(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_6
    const/4 v0, 0x1

    if-ne v4, v0, :cond_4

    .line 112
    sget-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->mRequiredPermissions:[Ljava/lang/String;

    .line 113
    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->startPermissionActivity(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Z

    goto :goto_1
.end method

.method private handleNormalKey(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "keycode"    # I
    .param p4, "action"    # I
    .param p5, "command"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p4, :cond_4

    .line 125
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 126
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v1, :cond_0

    .line 128
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 138
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->getMusicCommandTag(I)I

    move-result v0

    .line 139
    .local v0, "tag":I
    const/16 v1, 0x4f

    if-ne p3, v1, :cond_3

    .line 140
    const-string v1, "MusicButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNormalKey() - KeyEvent.KEYCODE_HEADSETHOOK - click count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 143
    sget-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    .line 144
    invoke-static {p5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;I)V

    .line 145
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    .line 145
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    .line 163
    .end local v0    # "tag":I
    :cond_1
    :goto_1
    return-void

    .line 149
    .restart local v0    # "tag":I
    :cond_2
    sget-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sClickCount:J

    .line 150
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    sget-object v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    sget-object v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sMediaButtonClickHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    .line 151
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 156
    :cond_3
    invoke-static {p5, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;I)V

    goto :goto_0

    .line 161
    .end local v0    # "tag":I
    :cond_4
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->sDown:Z

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v1, "SMUSIC-MusicButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() intent  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.MEDIA_BUTTON"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->handleMediaKey(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    :cond_1
    return-void
.end method
