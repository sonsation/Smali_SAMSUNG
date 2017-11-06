.class public Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;
.super Ljava/lang/Object;
.source "DefaultFeatures.java"


# static fields
.field private static final RO_BUILD_SCAFE:Ljava/lang/String; = "ro.build.scafe"

.field public static final SUPPORT_FW_FLUID_SEEKBAR:Z = true

.field public static final SUPPORT_HIGH_RESOLUTION_AUDIO:Z

.field public static final SUPPORT_HUN_NOTIFICATION:Z

.field public static final UX_VERSION_2015A:Z

.field public static final UX_VERSION_2016B:Z

.field public static final UX_VERSION_N:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "2015A"

    .line 14
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 15
    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2015A:Z

    .line 17
    const-string v0, "2016B"

    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_2016B:Z

    .line 19
    const-string v0, "N"

    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->UX_VERSION_N:Z

    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isUhqSupported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HIGH_RESOLUTION_AUDIO:Z

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31769

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->SUPPORT_HUN_NOTIFICATION:Z

    return-void

    .line 14
    :cond_0
    const-string v0, "americano"

    const-string/jumbo v1, "ro.build.scafe"

    .line 15
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
