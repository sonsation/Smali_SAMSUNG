.class public Lcom/samsung/android/app/music/support/android/view/inputmethod/InputMethodManagerCompat;
.super Ljava/lang/Object;
.source "InputMethodManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z
    .locals 1
    .param p0, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "height"    # I

    .prologue
    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->semMinimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result v0

    .line 15
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/view/inputmethod/InputMethodManagerSdlCompat;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z

    move-result v0

    goto :goto_0
.end method
