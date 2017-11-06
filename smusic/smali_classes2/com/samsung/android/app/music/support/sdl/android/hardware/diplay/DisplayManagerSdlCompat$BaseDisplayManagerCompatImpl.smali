.class Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;
.super Ljava/lang/Object;
.source "DisplayManagerSdlCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$DisplayManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseDisplayManagerCompatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$1;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/hardware/diplay/DisplayManagerSdlCompat$BaseDisplayManagerCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public checkScreenSharingSupported(Landroid/hardware/display/DisplayManager;)I
    .locals 1
    .param p1, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 134
    const/4 v0, -0x1

    return v0
.end method

.method public isDLNADeviceConnected(Landroid/hardware/display/DisplayManager;)Z
    .locals 1
    .param p1, "dm"    # Landroid/hardware/display/DisplayManager;

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method
