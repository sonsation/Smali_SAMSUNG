.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerError;
.super Ljava/lang/Object;
.source "SoundPlayerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPlayerError"
.end annotation


# static fields
.field public static final DURING_CALL:I = 0x1

.field public static final NETWORK_ERROR:I = 0x2

.field public static final PLAYBACK_FAILED:I = 0x0

.field public static final SDCARD_REMOVED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
