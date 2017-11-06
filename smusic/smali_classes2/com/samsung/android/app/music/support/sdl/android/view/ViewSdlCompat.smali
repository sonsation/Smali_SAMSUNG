.class public Lcom/samsung/android/app/music/support/sdl/android/view/ViewSdlCompat;
.super Ljava/lang/Object;
.source "ViewSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static twsetDrawDuringWindowsAnimating(Landroid/view/View;Z)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # Z

    .prologue
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x837

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    .line 12
    :cond_1
    return-void
.end method
