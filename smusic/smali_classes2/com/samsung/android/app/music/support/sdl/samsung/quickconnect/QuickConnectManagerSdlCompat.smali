.class public final Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;
.super Ljava/lang/Object;
.source "QuickConnectManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

.field private final mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

.field private final mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    .line 27
    const-string v0, "quickconnect"

    .line 28
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/quickconnect/QuickConnectManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    return-object v0
.end method


# virtual methods
.method public registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_2

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/quickconnect/QuickConnectManager;->registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;Landroid/content/Context;)V

    .line 41
    :goto_1
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mListener:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/quickconnect/QuickConnectManager;->registerListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    goto :goto_1
.end method

.method public terminate()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    invoke-virtual {v0}, Lcom/samsung/android/quickconnect/QuickConnectManager;->terminate()V

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectManager:Lcom/samsung/android/quickconnect/QuickConnectManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->mQuickConnectListener:Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/quickconnect/QuickConnectManager;->unregisterListener(Lcom/samsung/android/quickconnect/QuickConnectManager$QuickConnectListener;)V

    goto :goto_0
.end method
