.class public Lcom/samsung/android/app/music/support/android/content/res/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMobileKeyboard(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 11
    sget-boolean v1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v1, :cond_1

    .line 12
    iget v1, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    .line 15
    :goto_0
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->hasMobileKeyboard(Landroid/content/res/Configuration;)Z

    move-result v0

    goto :goto_0
.end method
