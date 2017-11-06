.class public Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V
    .locals 4
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "request"    # Z
    .param p2, "keyCodes"    # [I

    .prologue
    .line 83
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_0

    .line 84
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p2, v1

    .line 85
    .local v0, "keyCode":I
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    .line 86
    invoke-virtual {v3, v0, p0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "keyCode":I
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat;->requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V

    .line 91
    :cond_1
    return-void
.end method

.method public static setStartingWindowContentView(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "resId"    # I

    .prologue
    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->setStartingWindowContentView(Landroid/content/ComponentName;I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/support/sdl/android/content/ContextSdlCompat;->setStartingWindowContentView(Landroid/content/Context;I)V

    goto :goto_0
.end method
