.class public Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;
.super Ljava/lang/Object;
.source "GestureManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;
    }
.end annotation


# static fields
.field public static final GESTURE_IR_PROVIDER:Ljava/lang/String; = "ir_provider"

.field public static final GESTURE_TYPE_AIR_BROWSE:Ljava/lang/String; = "air_motion_turn"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mIsConnected:Z

.field private mIsSupportLandscape:Z

.field private mNeedToRegister:Z

.field private mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$2;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/service/gesture/GestureManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    return-object v0
.end method

.method private registerGestureListener()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    const-string v2, "ir_provider"

    const-string v3, "air_motion_turn"

    iget-boolean v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    .line 72
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    return-void
.end method


# virtual methods
.method public registerGestureEventChangedListener(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mOnGestureEventChangedListener:Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;

    .line 36
    return-void
.end method

.method public registerGestureListener(Z)V
    .locals 3
    .param p1, "isSupportLandscape"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsSupportLandscape:Z

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mNeedToRegister:Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->registerGestureListener()V

    goto :goto_0
.end method

.method public unregisterGestureListener()V
    .locals 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat;->mGestureListener:Lcom/samsung/android/service/gesture/GestureListener;

    const-string v2, "ir_provider"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
