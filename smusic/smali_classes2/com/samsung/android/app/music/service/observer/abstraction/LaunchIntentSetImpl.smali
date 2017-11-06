.class Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;
.super Ljava/lang/Object;
.source "LaunchIntentSetImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;


# static fields
.field private static final sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getsInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/samsung/android/app/music/service/observer/abstraction/LaunchIntentSetImpl;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    return-object v0
.end method


# virtual methods
.method public getLaunchIntentLockScreen(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntentMusic(ZI)Landroid/content/Intent;
    .locals 1
    .param p1, "launchFullScreen"    # Z
    .param p2, "tag"    # I

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getLaunchMusicIntent(ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
