.class public Lcom/samsung/android/app/music/support/sdl/android/view/inputmethod/InputMethodManagerSdlCompat;
.super Ljava/lang/Object;
.source "InputMethodManagerSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z
    .locals 1
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->minimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method
