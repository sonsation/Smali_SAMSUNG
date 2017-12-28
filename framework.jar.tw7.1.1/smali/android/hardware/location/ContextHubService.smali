.class public Landroid/hardware/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubService$1;
    }
.end annotation


# static fields
.field public static final ANY_HUB:I = -0x1

.field private static final APP_ID_ACTIVITY_RECOGNITION:J = 0x476f6f676c001000L

.field public static final CONTEXTHUB_SERVICE:Ljava/lang/String; = "contexthub_service"

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final HEADER_FIELD_APP_INSTANCE:I = 0x3

.field private static final HEADER_FIELD_HUB_HANDLE:I = 0x2

.field private static final HEADER_FIELD_LOAD_APP_ID_HI:I = 0x5

.field private static final HEADER_FIELD_LOAD_APP_ID_LO:I = 0x4

.field private static final HEADER_FIELD_MSG_TYPE:I = 0x0

.field private static final HEADER_FIELD_MSG_VERSION:I = 0x1

.field private static final MSG_HEADER_SIZE:I = 0x4

.field private static final MSG_LOAD_APP_HEADER_SIZE:I = 0x6

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PRE_LOADED_APP_MEM_REQ:I = 0x0

.field private static final PRE_LOADED_APP_NAME:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_APP_PUBLISHER:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_GENERIC_UNKNOWN:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

.field private final mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ContextHubService;->sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    new-instance v3, Landroid/hardware/location/ContextHubService$1;

    invoke-direct {v3, p0}, Landroid/hardware/location/ContextHubService$1;-><init>(Landroid/hardware/location/ContextHubService;)V

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    iput-object p1, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->nativeInitialize()[Landroid/hardware/location/ContextHubInfo;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    const-string v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContextHub["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.vr.mode"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "vrmanager"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v2, v3}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "ContextHubService"

    const-string v4, "VR state listener registration failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private addAppInstance(IIJI)I
    .locals 7

    const/4 v5, 0x0

    new-instance v1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-direct {v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>()V

    invoke-virtual {v1, p3, p4}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppId(J)V

    invoke-virtual {v1, p5}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppVersion(I)V

    const-string v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/hardware/location/NanoAppInstanceInfo;->setContexthubId(I)V

    invoke-virtual {v1, p2}, Landroid/hardware/location/NanoAppInstanceInfo;->setHandle(I)V

    const-string v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setPublisher(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededExecMemBytes(I)V

    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededReadMemBytes(I)V

    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededWriteMemBytes(I)V

    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Updated"

    :goto_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " app instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    const-string v0, "Added"

    goto :goto_0
.end method

.method private checkPermissions()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteAppInstance(I)I
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private native nativeInitialize()[Landroid/hardware/location/ContextHubInfo;
.end method

.method private native nativeSendMessage([I[B)I
.end method

.method private onMessageReceipt([I[B)I
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v5, -0x1

    return v5

    :cond_1
    array-length v5, p1

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    if-ge v1, v7, :cond_2

    const-string v5, "ContextHubService"

    const-string v6, "No message callbacks registered."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    new-instance v4, Landroid/hardware/location/ContextHubMessage;

    aget v5, p1, v8

    aget v6, p1, v7

    invoke-direct {v4, v5, v6, p2}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/IContextHubCallback;

    const/4 v5, 0x2

    :try_start_0
    aget v5, p1, v5

    const/4 v6, 0x3

    aget v6, p1, v6

    invoke-interface {v0, v5, v6, v4}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "ContextHubService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") calling remote callback ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return v8
.end method

.method private static parseAppId(Landroid/hardware/location/NanoApp;)J
    .locals 8

    const v1, 0x4f4e414e

    const/4 v2, 0x4

    const/16 v0, 0x8

    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const v6, 0x4f4e414e

    if-ne v5, v6, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6

    :catch_0
    move-exception v3

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/location/NanoApp;->getAppId()I

    move-result v5

    int-to-long v6, v5

    return-wide v6
.end method

.method private sendVrStateChangeMessageToApp(Landroid/hardware/location/NanoAppInstanceInfo;Z)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v1, v5, [I

    aput v4, v1, v4

    aput v4, v1, v3

    const/4 v5, -0x1

    const/4 v6, 0x2

    aput v5, v1, v6

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppInstanceInfo;->getHandle()I

    move-result v5

    const/4 v6, 0x3

    aput v5, v1, v6

    new-array v0, v3, [B

    if-eqz p2, :cond_1

    :goto_0
    int-to-byte v3, v3

    aput-byte v3, v0, v4

    invoke-direct {p0, v1, v0}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send VR state change notification ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Permission Denial: can\'t dump contexthub_service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "Dumping ContextHub Service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v6, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public getContextHubHandles()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    iget-object v2, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v2, v2

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput v0, v1, v0

    const-string v2, "ContextHubService"

    const-string v3, "Hub %s is mapped to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    if-ltz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    :cond_0
    const-string v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid contextHubhandle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    return v4

    :cond_1
    const/4 v4, 0x6

    new-array v3, v4, [I

    const/4 v4, 0x2

    aput p1, v3, v4

    const/4 v4, -0x1

    const/4 v5, 0x3

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppId()I

    move-result v4

    int-to-long v0, v4

    const/16 v4, 0x20

    shr-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    const-string v4, "ContextHubService"

    const-string v5, "Code has not been updated since API fix."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 v4, -0x1

    and-long/2addr v4, v0

    long-to-int v4, v4

    const/4 v5, 0x4

    aput v4, v3, v5

    const/16 v4, 0x20

    shr-long v4, v0, v4

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x5

    aput v4, v3, v5

    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    if-eqz v2, :cond_3

    const-string v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send Message returns error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    return v4

    :cond_2
    invoke-static {p2}, Landroid/hardware/location/ContextHubService;->parseAppId(Landroid/hardware/location/NanoApp;)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    const/4 v1, 0x4

    new-array v0, v1, [I

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v1

    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/hardware/location/ContextHubService;->checkPermissions()V

    iget-object v3, p0, Landroid/hardware/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    if-nez v0, :cond_0

    return v6

    :cond_0
    new-array v2, v7, [I

    const/4 v3, 0x2

    aput v6, v2, v3

    const/4 v3, 0x3

    aput p1, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    aput v7, v2, v5

    new-array v1, v5, [B

    invoke-direct {p0, v2, v1}, Landroid/hardware/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v3

    if-eqz v3, :cond_1

    return v6

    :cond_1
    return v5
.end method
