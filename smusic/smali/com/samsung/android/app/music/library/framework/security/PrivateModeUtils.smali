.class public Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;
.super Ljava/lang/Object;
.source "PrivateModeUtils.java"


# static fields
.field public static final CANCELLED:I

.field public static final DEFAULT_MUSIC_FOLDER:Ljava/lang/String; = "Music"

.field public static final MOUNTED:I

.field public static final PREPARED:I

.field private static final PRIVATE_AUTO_DISABLE_WHEN_SCREEN_OFF:Ljava/lang/String; = "personal_mode_auto_disable_when_screen_off"

.field public static final RESTORE_MUSIC_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->PREPARED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->PREPARED:I

    .line 47
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->MOUNTED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->MOUNTED:I

    .line 52
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->CANCELLED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->CANCELLED:I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/common/util/UiUtils;->EXTERNAL_STORAGE_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->RESTORE_MUSIC_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAutoDisableWhenScreenOff(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_auto_disable_when_screen_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPrivateMode()Z
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static isPrivateModeOnWithAutoOff(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isAutoDisableWhenScreenOff(Landroid/content/Context;)Z

    move-result v0

    .line 95
    .local v0, "autoOff":Z
    const-string v1, "PrivateMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrivateModeOnWithAutoOff autoOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v0    # "autoOff":Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateReady(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isReady(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
