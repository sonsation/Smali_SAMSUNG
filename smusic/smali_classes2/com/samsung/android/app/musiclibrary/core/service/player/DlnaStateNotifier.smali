.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;
.super Ljava/lang/Object;
.source "DlnaStateNotifier.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sPutIBinderExtra:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

.field private final mIsScreenSharingSupported:Z

.field private mPreviousState:I

.field private final mSenderType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    .line 24
    const-string v0, "android.content.Intent"

    const-string v1, "putExtra"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    .line 25
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sPutIBinderExtra:Ljava/lang/reflect/Method;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderType"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    .line 44
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    .line 45
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mSenderType:I

    .line 46
    return-void
.end method

.method private sendDlnaStatus(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;II)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dm"    # Landroid/hardware/display/DisplayManager;
    .param p3, "info"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;
    .param p4, "state"    # I
    .param p5, "type"    # I

    .prologue
    .line 75
    if-nez p3, :cond_0

    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDlnaStatus() - dmr info is null, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 80
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 81
    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    iget-object v3, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    iget-object v4, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    iget-object v5, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    iget-object v7, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    move-object v0, p2

    move v6, p5

    move v8, p4

    .line 82
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->setActiveDlnaState(Landroid/hardware/display/DisplayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 103
    :goto_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDlnaStatus() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmrId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmrName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmrIPAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dmrP2pAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nic : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iconUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.sec.android.screensharing.DLNA_STATUS"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "status"

    invoke-virtual {v9, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    sget v0, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTING:I

    if-ne p4, v0, :cond_2

    .line 88
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sPutIBinderExtra:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "binder"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v0, v9, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_2
    const-string v0, "device_name"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v0, "ipAddress"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v0, "player_type"

    invoke-virtual {v9, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v0, "uid"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v0, "p2pMacAddress"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v0, "netType"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v0, "uri"

    iget-object v1, p3, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public send(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    if-ne v0, p1, :cond_2

    .line 65
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send() already send this state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mSenderType:I

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->sendDlnaStatus(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    goto :goto_0
.end method

.method public setUpData(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mIsScreenSharingSupported:Z

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mDmrStatusInfo:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DlnaStateNotifier;->mPreviousState:I

    goto :goto_0
.end method
