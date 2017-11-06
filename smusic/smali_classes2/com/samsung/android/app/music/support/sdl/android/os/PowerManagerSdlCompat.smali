.class public final Lcom/samsung/android/app/music/support/sdl/android/os/PowerManagerSdlCompat;
.super Ljava/lang/Object;
.source "PowerManagerSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static goToSleep(Landroid/os/PowerManager;J)V
    .locals 1
    .param p0, "pm"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 51
    return-void
.end method

.method public static wakeUp(Landroid/os/PowerManager;J)V
    .locals 1
    .param p0, "pm"    # Landroid/os/PowerManager;
    .param p1, "time"    # J

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 30
    return-void
.end method
