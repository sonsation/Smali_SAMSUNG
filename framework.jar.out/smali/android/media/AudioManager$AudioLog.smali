.class public final Landroid/media/AudioManager$AudioLog;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioLog"
.end annotation


# static fields
.field public static final HIGH:I = 0x4948

.field public static final LOW:I = 0x4f4c

.field public static final MID:I = 0x494d

.field public static final SLOG:I

.field private static debugLevel:I

.field public static isAudioCoreLogEnable:Z

.field public static isSecLogEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x4f4c

    const/4 v1, 0x0

    .line 5257
    sput-boolean v1, Landroid/media/AudioManager$AudioLog;->isSecLogEnable:Z

    .line 5258
    sput-boolean v1, Landroid/media/AudioManager$AudioLog;->isAudioCoreLogEnable:Z

    .line 5267
    sput v4, Landroid/media/AudioManager$AudioLog;->debugLevel:I

    .line 5271
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "persist.log.seclevel"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/media/AudioManager$AudioLog;->isSecLogEnable:Z

    .line 5275
    :try_start_0
    const-string/jumbo v1, "ro.debug_level"

    const-string/jumbo v2, "0x4f4c"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/media/AudioManager$AudioLog;->debugLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5256
    .local v0, "ne":Ljava/lang/NumberFormatException;
    :goto_0
    return-void

    .line 5276
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 5277
    .restart local v0    # "ne":Ljava/lang/NumberFormatException;
    sput v4, Landroid/media/AudioManager$AudioLog;->debugLevel:I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5282
    sget-boolean v2, Landroid/media/AudioManager$AudioLog;->isAudioCoreLogEnable:Z

    if-eqz v2, :cond_0

    .line 5283
    return v0

    .line 5285
    :cond_0
    if-nez p1, :cond_1

    .line 5286
    sget-boolean v0, Landroid/media/AudioManager$AudioLog;->isSecLogEnable:Z

    return v0

    .line 5287
    :cond_1
    const/16 v2, 0x4f4c

    if-eq p1, v2, :cond_2

    const/16 v2, 0x494d

    if-ne p1, v2, :cond_3

    .line 5288
    :cond_2
    sget v2, Landroid/media/AudioManager$AudioLog;->debugLevel:I

    if-ne p1, v2, :cond_4

    :goto_0
    return v0

    .line 5287
    :cond_3
    const/16 v2, 0x4948

    if-eq p1, v2, :cond_2

    .line 5289
    return v1

    :cond_4
    move v0, v1

    .line 5288
    goto :goto_0
.end method
