.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;
.super Ljava/lang/Object;
.source "ServiceCoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    }
.end annotation


# static fields
.field private static final CONNECTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final SUB_TAG:Ljava/lang/String; = "ServiceUtils-"

.field private static final TAG:Ljava/lang/String; = "SV"

.field private static final UNDEFINED:I = -0x1

.field private static sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

.field private static sServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    .prologue
    .line 50
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    return-object p0
.end method

.method public static addQueue([JI)V
    .locals 2
    .param p0, "ids"    # [J
    .param p1, "action"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JIZILjava/lang/String;)V

    .line 278
    return-void
.end method

.method private static addQueue([JILjava/lang/String;)V
    .locals 2
    .param p0, "ids"    # [J
    .param p1, "action"    # I
    .param p2, "sourceListId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {p0, p1, v1, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JIZILjava/lang/String;)V

    goto :goto_0
.end method

.method private static addQueue([JIZILjava/lang/String;)V
    .locals 2
    .param p0, "ids"    # [J
    .param p1, "action"    # I
    .param p2, "play"    # Z
    .param p3, "position"    # I
    .param p4, "sourceListId"    # Ljava/lang/String;

    .prologue
    .line 289
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 295
    if-eqz p4, :cond_2

    .line 296
    const/16 v1, 0x17

    invoke-static {v1, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 299
    :cond_2
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->addQueue([JIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static addQueueItems(Ljava/util/List;I)V
    .locals 5
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez p0, :cond_2

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 314
    invoke-interface {v2, v1, p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->addQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static bindDlna()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 659
    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Landroid/content/ServiceConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v4, 0x0

    .line 84
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "cw":Landroid/content/ContextWrapper;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 89
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 90
    .local v1, "sb":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 98
    :goto_0
    return-object v2

    .line 97
    :cond_1
    const-string v2, "SMUSIC-SV"

    const-string v3, "ServiceUtils-Failed to bind to service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static buffering()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 607
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 616
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 612
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->buffering()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static changeSoundPathTo(I)V
    .locals 3
    .param p0, "soundPath"    # I

    .prologue
    .line 714
    packed-switch p0, :pswitch_data_0

    .line 722
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSoundPathTo invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_0
    return-void

    .line 716
    :pswitch_0
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    goto :goto_0

    .line 719
    :pswitch_1
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    goto :goto_0

    .line 714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static changeToDefaultPlayer()V
    .locals 1

    .prologue
    .line 706
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 707
    return-void
.end method

.method public static changeToDmrPlayer(Ljava/lang/String;)V
    .locals 1
    .param p0, "dmrId"    # Ljava/lang/String;

    .prologue
    .line 702
    const/16 v0, 0x9

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 703
    return-void
.end method

.method public static changeToWfdDevice()V
    .locals 1

    .prologue
    .line 710
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 711
    return-void
.end method

.method private static convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "slice":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static dlnaDmrVolumeDown()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 675
    return-void
.end method

.method public static dlnaDmrVolumeUp()V
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 671
    return-void
.end method

.method public static duration()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 581
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v2

    .line 586
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static ensureServiceHandler()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$1;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$1;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    .line 137
    :cond_0
    return-void
.end method

.method public static getActivePlayerQueue()I
    .locals 1

    .prologue
    .line 756
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getAudioSessionId()I
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method private static getBooleanExtra(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 827
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 830
    :goto_0
    return v1

    .line 828
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCpAttrs()I
    .locals 4

    .prologue
    .line 921
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 922
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 926
    .local v0, "cpAttrs":I
    return v0
.end method

.method public static getCurrentAudioId()J
    .locals 3

    .prologue
    .line 904
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 908
    .local v0, "id":J
    return-wide v0
.end method

.method public static getCurrentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 895
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 896
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public static getDlnaPlayingDmrId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDlnaPlayingNic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtraInformation(I)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 853
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 854
    const-string v2, "SMUSIC-SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtraInformation but condition is abnormal. Please check method call timing. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :goto_0
    return-object v1

    .line 860
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getExtraInformation(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 864
    const-string v2, "SMUSIC-SV"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtraInformation but service method call is fail. Please check method call timing. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getFloatExtra(I)F
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 836
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 839
    :goto_0
    return v1

    .line 837
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private static getIntegerExtra(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 845
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 848
    :goto_0
    return v1

    .line 846
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListItemCount()I
    .locals 3

    .prologue
    .line 913
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.list_length"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 917
    .local v0, "count":I
    return v0
.end method

.method public static getMusicExtras()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 484
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 488
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getMusicExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .prologue
    .line 416
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 417
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 420
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 424
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .prologue
    .line 428
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 429
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 436
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMusicQueue()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 465
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    .line 475
    .local v1, "slice":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    :goto_0
    return-object v2

    .line 470
    .end local v1    # "slice":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    move-result-object v1

    .line 471
    .restart local v1    # "slice":Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;, "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 475
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public static getMusicQueueCountFromService()I
    .locals 1

    .prologue
    .line 480
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getPlaySpeed()F
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getFloatExtra(I)F

    move-result v0

    return v0
.end method

.method public static getPlayingItemExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 496
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 497
    const/4 v1, 0x0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 500
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getPlayingItemExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 504
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .prologue
    .line 440
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 441
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 444
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 448
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .prologue
    .line 452
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 453
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 460
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 460
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    goto :goto_0
.end method

.method public static getScreenOffMusic()Z
    .locals 1

    .prologue
    .line 822
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static getSettingsPlaySpeed()F
    .locals 1

    .prologue
    .line 782
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getFloatExtra(I)F

    move-result v0

    return v0
.end method

.method public static getSortMode()I
    .locals 1

    .prologue
    .line 384
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getIntegerExtra(I)I

    move-result v0

    return v0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 930
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    .line 931
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method public static getUriType()I
    .locals 4

    .prologue
    .line 940
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra.uri_type"

    const/4 v3, -0x1

    .line 941
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 945
    .local v0, "uriType":I
    return v0
.end method

.method public static isAddQueueEnabled()Z
    .locals 4

    .prologue
    .line 646
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 647
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 648
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->getStorageLocation(I)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBtConnected()Z
    .locals 1

    .prologue
    .line 794
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isConnectingWfd()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isDmrPlaying()Z
    .locals 2

    .prologue
    .line 887
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    .line 891
    .local v0, "playerType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHdmiConnected()Z
    .locals 1

    .prologue
    .line 790
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static isLocalTrack()Z
    .locals 4

    .prologue
    .line 652
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.CP_ATTRS"

    .line 653
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 654
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v1

    return v1
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    .line 871
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 875
    .local v0, "isPlaying":Z
    return v0
.end method

.method public static isRadioPlaying()Z
    .locals 2

    .prologue
    .line 879
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 883
    .local v0, "isPlaying":Z
    return v0
.end method

.method public static isSupportPlaySpeed()Z
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getBooleanExtra(I)Z

    move-result v0

    return v0
.end method

.method public static moveQueueItem(II)V
    .locals 2
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 346
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 350
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->moveQueueItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static openList(ILjava/lang/String;[JI)V
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 187
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;-><init>(ILjava/lang/String;[JI)V

    .line 199
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$2;->start()V

    goto :goto_0
.end method

.method public static openList(ILjava/lang/String;[JILjava/lang/String;)V
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "sourceListId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    if-eqz p4, :cond_1

    .line 214
    const/16 v0, 0x17

    invoke-static {v0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 216
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V

    goto :goto_0
.end method

.method public static openQueuePosition(IIZ)V
    .locals 2
    .param p0, "position"    # I
    .param p1, "direction"    # I
    .param p2, "play"    # Z

    .prologue
    .line 266
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 270
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->openQueuePosition(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static openQueuePosition(IZ)V
    .locals 1
    .param p0, "index"    # I
    .param p1, "play"    # Z

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IIZ)V

    .line 263
    return-void
.end method

.method public static openShuffleList(ILjava/lang/String;[J)V
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J

    .prologue
    .line 169
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V

    .line 170
    return-void
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 535
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static pauseRadio()V
    .locals 1

    .prologue
    .line 628
    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 629
    return-void
.end method

.method public static play()V
    .locals 2

    .prologue
    .line 524
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 528
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static play(ILjava/lang/String;[JII)V
    .locals 6
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "action"    # I

    .prologue
    .line 234
    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(ILjava/lang/String;[JIILjava/lang/String;)V

    .line 235
    return-void
.end method

.method private static play(ILjava/lang/String;[JIILjava/lang/String;)V
    .locals 1
    .param p0, "listType"    # I
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "list"    # [J
    .param p3, "position"    # I
    .param p4, "action"    # I
    .param p5, "sourceListId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 254
    const/4 v0, 0x5

    if-ne p4, v0, :cond_0

    .line 255
    invoke-static {p0, p1, p2, p3, p5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JILjava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x1

    invoke-static {p2, p4, v0, p3, p5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->addQueue([JIZILjava/lang/String;)V

    goto :goto_0
.end method

.method public static playNext()V
    .locals 2

    .prologue
    .line 546
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 554
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static playNextRadio()V
    .locals 1

    .prologue
    .line 632
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 633
    return-void
.end method

.method public static playPrev(Z)V
    .locals 2
    .param p0, "force"    # Z

    .prologue
    .line 557
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 561
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->prev(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static playPrevRadio(Z)V
    .locals 2
    .param p0, "force"    # Z

    .prologue
    .line 636
    const/16 v0, 0x20

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 637
    return-void
.end method

.method public static playRadio()V
    .locals 1

    .prologue
    .line 624
    const/16 v0, 0x1d

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 625
    return-void
.end method

.method public static position()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 594
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-wide v2

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static refreshDlna()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 663
    return-void
.end method

.method public static registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 2
    .param p0, "c"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    .prologue
    .line 391
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static reloadRadioQueue()V
    .locals 1

    .prologue
    .line 640
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 641
    return-void
.end method

.method public static varargs removeQueueAudioIds([J)I
    .locals 3
    .param p0, "ids"    # [J

    .prologue
    const/4 v1, 0x0

    .line 334
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 342
    :goto_0
    return v1

    .line 338
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->removeQueueAudioIds([J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static varargs removeQueuePosition([I)I
    .locals 3
    .param p0, "positions"    # [I

    .prologue
    const/4 v1, 0x0

    .line 322
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v2, :cond_0

    .line 330
    :goto_0
    return v1

    .line 326
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->removeQueuePosition([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestQueue()V
    .locals 1

    .prologue
    .line 690
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 691
    return-void
.end method

.method public static saveSettingsAutoOff(Ljava/lang/String;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 732
    const/16 v0, 0xd

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 733
    return-void
.end method

.method public static saveSettingsPlaySpeed(F)V
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 728
    const/16 v0, 0xc

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 729
    return-void
.end method

.method public static saveSupportAod(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 752
    const/16 v0, 0x18

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 753
    return-void
.end method

.method public static seek(J)J
    .locals 4
    .param p0, "position"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 568
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 577
    :goto_0
    return-wide v2

    .line 573
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static selectDlnaDms(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 666
    const/4 v0, 0x3

    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 667
    return-void
.end method

.method private static sendCustomEvent(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 686
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 687
    return-void
.end method

.method public static sendCustomEvent(ILjava/lang/String;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 760
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->sendCustomEvent(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendCustomEventBundle(ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "value"    # Landroid/os/Bundle;

    .prologue
    .line 771
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 779
    :goto_0
    return-void

    .line 775
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->sendCustomEventBundle(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setActiveQueueType(I)V
    .locals 2
    .param p0, "queueType"    # I

    .prologue
    .line 952
    const/16 v0, 0x22

    .line 953
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 954
    return-void
.end method

.method public static setAdaptSound(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 736
    const/16 v0, 0xf

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 737
    return-void
.end method

.method public static setBargeIn(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 748
    const/16 v0, 0x12

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 749
    return-void
.end method

.method public static setDlnaDmrMute()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 679
    return-void
.end method

.method public static setLockScreen(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 740
    const/16 v0, 0x10

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 741
    return-void
.end method

.method public static setPlaySpeed(F)V
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 682
    const/4 v0, 0x7

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 683
    return-void
.end method

.method public static setScreenOffMusic(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 744
    const/16 v0, 0x11

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 745
    return-void
.end method

.method public static setSkipSilence(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 698
    const/16 v0, 0x13

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 699
    return-void
.end method

.method public static setSmartVolume(Z)V
    .locals 2
    .param p0, "isOn"    # Z

    .prologue
    .line 694
    const/16 v0, 0x8

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 695
    return-void
.end method

.method public static setSortMode(I)V
    .locals 2
    .param p0, "sortMode"    # I

    .prologue
    .line 380
    const/16 v0, 0x1b

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    .line 381
    return-void
.end method

.method private static toggleMode(I)V
    .locals 2
    .param p0, "modeType"    # I

    .prologue
    .line 369
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->toggleQueueMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static togglePlay()V
    .locals 2

    .prologue
    .line 513
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->togglePlay()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static togglePlayRadio()V
    .locals 1

    .prologue
    .line 620
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(I)V

    .line 621
    return-void
.end method

.method public static toggleRepeat()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    .line 362
    return-void
.end method

.method public static toggleShuffle()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    .line 366
    return-void
.end method

.method public static toggleUnionRepeatShuffle()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->toggleMode(I)V

    .line 358
    return-void
.end method

.method public static unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 6
    .param p0, "token"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    .prologue
    const/4 v3, 0x0

    .line 102
    if-nez p0, :cond_0

    .line 103
    const-string v2, "SMUSIC-SV"

    const-string v3, "ServiceUtils- Trying to unbind with null token"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 107
    .local v0, "cw":Landroid/content/ContextWrapper;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->CONNECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    .line 108
    .local v1, "sb":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;
    if-nez v1, :cond_1

    .line 109
    const-string v2, "SMUSIC-SV"

    const-string v3, "ServiceUtils- Trying to unbind for unknown Context"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->ensureServiceHandler()V

    .line 117
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sServiceHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public static unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 2
    .param p0, "c"    # Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    .prologue
    .line 405
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-nez v1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    invoke-interface {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wasServiceConnected()Z
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sCoreService:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
