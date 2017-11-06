.class public final Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
.super Ljava/lang/Object;
.source "ServiceCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand$Tag;
    }
.end annotation


# static fields
.field private static sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mServiceClass:Ljava/lang/Class;

    .line 135
    return-void
.end method

.method private addTag(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "tag"    # I

    .prologue
    .line 314
    const-string/jumbo v0, "tag"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    return-object p1
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    .line 119
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    return-object v0
.end method

.method private getExitIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 186
    const-string v0, "com.samsung.android.app.music.core.action.EXIT_MUSIC"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->sServiceCommand:Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    return-object v0
.end method

.method private getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;
    .locals 9
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "isMaintainSeekPosition"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 363
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;
    .locals 4
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "isMaintainSeekPosition"    # Z
    .param p6, "seekPosition"    # J
    .param p8, "play"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 348
    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 349
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "openList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v1, "listQueryKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string/jumbo v1, "seek_position"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 352
    const-string v1, "playing"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v1, "list"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 354
    const-string v1, "listPosition"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v1, "dmr_device"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "is_maintain_seek_position"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    return-object v0
.end method

.method private getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mServiceClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    return-object v0
.end method

.method private getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 300
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "i"    # Landroid/content/Intent;
    .param p2, "tag"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->addTag(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getTogglePauseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 155
    const-string v0, "com.samsung.android.app.music.core.action.TOGGLE_PAUSE"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private startCommand(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 392
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    .line 393
    return-void
.end method

.method private startCommand(Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "tag"    # I

    .prologue
    .line 403
    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 404
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    invoke-direct {p0, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->addTag(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 408
    return-void
.end method


# virtual methods
.method public enqueue([J)V
    .locals 3
    .param p1, "list"    # [J

    .prologue
    .line 319
    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 320
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "enqueue"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 323
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getExitIntent()Landroid/content/Intent;

    move-result-object v0

    .line 179
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    return-void
.end method

.method public forward()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method public getExitPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getExitIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getForwardDownPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 231
    const-string v0, "com.samsung.android.app.music.core.action.FF_DOWN"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getForwardUpPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 235
    const-string v0, "com.samsung.android.app.music.core.action.FF_UP"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getHideNotificationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.app.music.core.action.HIDE_NOTIFICATION"

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getNextPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 207
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getNextPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getNextPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 219
    const-string v0, "com.samsung.android.app.music.core.action.NEXT"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getOpenListPendingIntent(ILjava/lang/String;[JILjava/lang/String;Z)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "list"    # [J
    .param p4, "position"    # I
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "isMaintainSeekPosition"    # Z

    .prologue
    .line 327
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    .line 328
    .local v6, "i":Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    const/high16 v1, 0x8000000

    .line 329
    invoke-static {v0, p1, v6, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 203
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getPrevPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getPrevPendingIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 215
    const-string v0, "com.samsung.android.app.music.core.action.PREV"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getRewindDownPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 223
    const-string v0, "com.samsung.android.app.music.core.action.REW_DOWN"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getRewindUpPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 227
    const-string v0, "com.samsung.android.app.music.core.action.REW_UP"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getToggleFavoritePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 243
    const-string v0, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTogglePausePendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 199
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePausePendingIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTogglePausePendingIntent(I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePauseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getToggleRepeatPendingIntent(I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 252
    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_REPEAT"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 253
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getToggleShufflePendingIntent(I)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 247
    const-string v1, "com.samsung.android.app.music.core.action.TOGGLE_SHUFFLE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    .local v0, "i":Landroid/content/Intent;
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public getToggleUnionShuffleRepeatPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 239
    const-string v0, "com.samsung.android.app.music.core.action.TOGGLE_UNION_SHUFFLE_REPEAT"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServicePendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public openList(Ljava/lang/String;[JILjava/lang/String;Z)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "isMaintainSeekPosition"    # Z

    .prologue
    .line 334
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 336
    return-void
.end method

.method public openList(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
    .locals 2
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "isMaintainSeekPosition"    # Z
    .param p6, "seekPosition"    # J
    .param p8, "play"    # Z

    .prologue
    .line 340
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getOpenListIntent(Ljava/lang/String;[JILjava/lang/String;ZJZ)Landroid/content/Intent;

    move-result-object v0

    .line 342
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    return-void
.end method

.method public openWidgetQueue([JI)V
    .locals 2
    .param p1, "list"    # [J
    .param p2, "position"    # I

    .prologue
    .line 143
    const-string v1, "com.samsung.android.app.music.core.action.PLAY_WIDGET_LIST"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 145
    const-string v1, "listPosition"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 368
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method public playNext()V
    .locals 2

    .prologue
    .line 380
    const-string v0, "next"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public playPrevious()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "previous"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public reloadQueue()V
    .locals 2

    .prologue
    .line 138
    const-string v1, "com.samsung.android.app.music.core.action.RELOAD_QUEUE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 140
    return-void
.end method

.method public rewind()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method public seek(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 275
    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 276
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string/jumbo v2, "seek"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string/jumbo v1, "seek_position"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    return-void
.end method

.method public sendEdgeAnimationState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 269
    const-string v1, "com.samsung.android.app.music.core.action.SEND_EDGE_ANIMATION_STATE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 270
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "edge_animation_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    return-void
.end method

.method public setRepeat(I)V
    .locals 3
    .param p1, "repeat"    # I

    .prologue
    .line 423
    const-string v1, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 424
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 425
    const-string v1, "extra.value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 427
    return-void
.end method

.method public setShuffle(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 416
    const-string v1, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v2, "extra.value"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 420
    return-void

    .line 418
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUnionShuffleRepeat(I)V
    .locals 3
    .param p1, "unionMode"    # I

    .prologue
    .line 257
    const-string v1, "com.samsung.android.app.music.core.action.CHANG_QUEUE_MODE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 258
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v1, "extra.value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    return-void
.end method

.method public startCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    .line 385
    return-void
.end method

.method public startCommand(Ljava/lang/String;I)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "tag"    # I

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startCommand(Ljava/lang/String;ZI)V

    .line 389
    return-void
.end method

.method public startPlayerService()V
    .locals 2

    .prologue
    .line 411
    const-string v1, "com.samsung.android.app.music.core.action.SERVICE_COMMAND"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 412
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 413
    return-void
.end method

.method public toggleFavorite()V
    .locals 2

    .prologue
    .line 264
    const-string v1, "com.samsung.android.app.music.core.action.ACTION_TOGGLE_FAVORITE"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 265
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    return-void
.end method

.method public togglePause()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getTogglePauseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    return-void
.end method

.method public updateWidget()V
    .locals 2

    .prologue
    .line 159
    const-string v1, "com.samsung.android.app.music.core.action.UPDATE_WIDGET"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 161
    return-void
.end method
