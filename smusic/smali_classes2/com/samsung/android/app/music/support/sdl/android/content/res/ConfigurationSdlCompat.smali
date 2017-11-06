.class public Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;
.super Ljava/lang/Object;
.source "ConfigurationSdlCompat.java"


# static fields
.field private static sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

.field private static sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

.field private static sNeedCheckMobileKeyboardCoveredField:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sNeedCheckMobileKeyboardCoveredField:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasMobileKeyboard(Landroid/content/res/Configuration;)Z
    .locals 6
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    sget v4, Landroid/os/Build$VERSION;->SDL_INT:I

    const/16 v5, 0x899

    if-lt v4, v5, :cond_2

    .line 19
    iget v4, p0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v2, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 19
    goto :goto_0

    .line 23
    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_5

    sget-boolean v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sNeedCheckMobileKeyboardCoveredField:Z

    if-eqz v4, :cond_5

    .line 31
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "confClass":Ljava/lang/Class;
    sget-object v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_3

    .line 33
    const-string v4, "mobileKeyboardCovered"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    .line 35
    :cond_3
    sget-object v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_4

    .line 36
    const-string v4, "MOBILEKEYBOARD_COVERED_YES"

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    .line 39
    :cond_4
    sget-object v4, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredYesField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sMobileKeyboardCoveredField:Ljava/lang/reflect/Field;

    .line 40
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eq v4, v5, :cond_0

    .end local v0    # "confClass":Ljava/lang/Class;
    :cond_5
    :goto_1
    move v2, v3

    .line 48
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    const-string v2, "Exception"

    const-string v4, "Unable to read mobile keyboard state"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    sput-boolean v3, Lcom/samsung/android/app/music/support/sdl/android/content/res/ConfigurationSdlCompat;->sNeedCheckMobileKeyboardCoveredField:Z

    goto :goto_1

    .line 43
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    goto :goto_2
.end method
