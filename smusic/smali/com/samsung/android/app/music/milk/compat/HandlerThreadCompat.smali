.class public Lcom/samsung/android/app/music/milk/compat/HandlerThreadCompat;
.super Ljava/lang/Object;
.source "HandlerThreadCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quit(Landroid/os/HandlerThread;)V
    .locals 2
    .param p0, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method
