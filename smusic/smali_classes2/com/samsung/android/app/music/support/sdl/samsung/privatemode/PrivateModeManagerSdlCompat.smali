.class public Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;
.super Ljava/lang/Object;
.source "PrivateModeManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;
    }
.end annotation


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field public static final ERROR_INTERNAL:I = 0x15

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field public static final UNMOUNTED:I = 0x2


# instance fields
.field private final mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private final mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

.field private final mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

.field private mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x89a

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    .line 52
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-static {p1, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->legacyGetInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    return-object v0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isM2PActivating()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    return v0
.end method

.method public static isPrivateMode()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->isReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private legacyGetInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 109
    const-string v3, "com.samsung.android.privatemode.PrivateModeManager"

    const-string v4, "getInstance"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v7

    const-class v6, Lcom/samsung/android/privatemode/IPrivateModeClient;

    aput-object v6, v5, v8

    .line 110
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v3, v9, [Ljava/lang/Object;

    aput-object p1, v3, v7

    aput-object p2, v3, v8

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    if-eqz v3, :cond_0

    .line 114
    check-cast v1, Lcom/samsung/android/privatemode/PrivateModeManager;

    .line 116
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method private legacyRegisterClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 8
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    const-string v2, "com.samsung.android.privatemode.PrivateModeManager"

    const-string/jumbo v3, "registerClient"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Lcom/samsung/android/privatemode/IPrivateModeClient;

    aput-object v5, v4, v6

    .line 122
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 126
    check-cast v1, Landroid/os/IBinder;

    .line 128
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->binderDied()V

    .line 105
    return-void
.end method

.method public registerListener(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)Landroid/os/IBinder;
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x89a

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->legacyRegisterClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/IBinder;Z)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/privatemode/PrivateModeManager;->unregisterClient(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method
