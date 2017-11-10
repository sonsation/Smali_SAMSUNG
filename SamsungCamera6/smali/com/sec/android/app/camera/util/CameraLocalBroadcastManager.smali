.class public Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;
.super Ljava/lang/Object;
.source "CameraLocalBroadcastManager.java"


# static fields
.field public static final ACTION_AUDIOFOCUS_LOSS:Ljava/lang/String; = "camera.action.AUDIOFOCUS_LOSS"

.field public static final ACTION_CALL_STATE_IDLE:Ljava/lang/String; = "camera.action.CALL_STATE_IDLE"

.field public static final ACTION_CALL_STATE_OFFHOOK:Ljava/lang/String; = "camera.action.CALL_STATE_OFFHOOK"

.field public static final ACTION_CALL_STATE_RINGING:Ljava/lang/String; = "camera.action.CALL_STATE_RINGING"

.field public static final ACTION_COOLDOWN_TEMPERATURE:Ljava/lang/String; = "camera.action.COOLDOWN_TEMPERATURE"

.field public static final ACTION_COVER_ATTACHED:Ljava/lang/String; = "camera.action.COVER_ATTACHED"

.field public static final ACTION_COVER_DETACHED:Ljava/lang/String; = "camera.action.COVER_DETACHED"

.field public static final ACTION_COVER_OPENED:Ljava/lang/String; = "camera.action.COVER_OPENED"

.field public static final ACTION_ERROR_CAMERA_BUSY:Ljava/lang/String; = "camera.action.ACTION_ERROR_CAMERA_BUSY"

.field public static final ACTION_ERROR_CAMERA_SERVER_DIED:Ljava/lang/String; = "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "camera.action.HEADSET_PLUG"

.field public static final ACTION_LOW_BATTERY:Ljava/lang/String; = "camera.action.LOW_BATTERY"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "camera.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "camera.action.MEDIA_UNMOUNTED"

.field public static final ACTION_OVERHEAT_TEMPERATURE:Ljava/lang/String; = "camera.action.OVERHEAT_TEMPERATURE"

.field public static final ACTION_PREVIEW_TIMEOUT:Ljava/lang/String; = "camera.action.PREVIEW_TIMEOUT"

.field public static final ACTION_SHOOTING_MODE_ACTIVATED:Ljava/lang/String; = "camera.action.SHOOTING_MODE_ACTIVATED"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "camera.action.SHUTDOWN"

.field public static final ACTION_VIDEO_CAPABILITY:Ljava/lang/String; = "camera.action.ACTION_VIDEO_CAPABILITY"

.field private static final TAG:Ljava/lang/String; = "CameraLocalBCManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static send(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "CameraLocalBCManager"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraLocalBCManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLocalBroadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const-string v0, "CameraLocalBCManager"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
