.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;
.super Landroid/os/Handler;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioPathHandler"
.end annotation


# static fields
.field private static final AUDIO_PATH_CHANGED:I = 0x0

.field private static final AUDIO_PATH_CHANGED_BT:I = 0x1

.field private static final CHANGE_AUDIO_PATH_TO_BT:I = 0x4

.field private static final CHANGE_AUDIO_PATH_TO_DEVICE:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1271
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1272
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->mContext:Landroid/content/Context;

    .line 1273
    return-void
.end method

.method private notifyAudioPathChangedIntent(ILandroid/content/Context;)V
    .locals 3
    .param p1, "msgId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    packed-switch p1, :pswitch_data_0

    .line 1318
    :goto_0
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1319
    return-void

    .line 1306
    :pswitch_1
    const-string v1, "is_bt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1309
    :pswitch_2
    const-string v1, "is_bt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1310
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSoundPathToBT(Landroid/content/Context;)V

    goto :goto_0

    .line 1313
    :pswitch_3
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSoundPathToDevice(Landroid/content/Context;)V

    goto :goto_0

    .line 1304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1297
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1298
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyAudioPathChangedIntent(ILandroid/content/Context;)V

    .line 1299
    return-void
.end method

.method notifyPathChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1281
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    .line 1282
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1283
    return-void
.end method

.method notifyPathChangedToBt()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1276
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    .line 1277
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1278
    return-void
.end method

.method notifyPathToBt()V
    .locals 4

    .prologue
    .line 1291
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    .line 1292
    const/4 v0, 0x4

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1293
    return-void
.end method

.method notifyPathToDevice()V
    .locals 4

    .prologue
    .line 1286
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    .line 1287
    const/4 v0, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1288
    return-void
.end method
