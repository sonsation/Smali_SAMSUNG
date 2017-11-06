.class public Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;
.super Ljava/lang/Object;
.source "QuickConnectManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;,
        Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;
    }
.end annotation


# instance fields
.field private final mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

.field private final mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 28
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    .line 29
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;-><init>(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;->setListener(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mSdlListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->registerListener(Landroid/app/Activity;Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;)V

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->terminate()V

    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;->mQuickConnectManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat;->unregisterListener()V

    goto :goto_0
.end method
