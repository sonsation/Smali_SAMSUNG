.class public Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;
.super Ljava/lang/Object;
.source "LegacySoundAliveConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field public static final FX:Z

.field public static final V4:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string v0, "FX"

    sget-object v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->AUDIO_CONFIG_SOUNDALIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->FX:Z

    .line 27
    const-string v0, "40"

    sget-object v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->AUDIO_CONFIG_SOUNDALIVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->V4:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
