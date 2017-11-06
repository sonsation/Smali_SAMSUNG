.class public Lcom/samsung/android/app/music/support/sdl/android/content/ContextSdlCompat;
.super Ljava/lang/Object;
.source "ContextSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStartingWindowContentView(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 10
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->setStartingWindowContentView(I)V

    .line 13
    :cond_1
    return-void
.end method
