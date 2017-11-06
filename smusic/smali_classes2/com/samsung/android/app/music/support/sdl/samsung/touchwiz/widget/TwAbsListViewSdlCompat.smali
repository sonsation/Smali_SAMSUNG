.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbsListViewSdlCompat;
.super Ljava/lang/Object;
.source "TwAbsListViewSdlCompat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static semEnableGoToTop(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 2
    .param p0, "absListView"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x8fe

    if-lt v0, v1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->semEnableGoToTop(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method public static twSetFluidScrollEnabled(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 2
    .param p0, "absListView"    # Lcom/sec/android/touchwiz/widget/TwAbsListView;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twSetFluidScrollEnabled(Z)V

    .line 31
    :cond_0
    return-void
.end method
