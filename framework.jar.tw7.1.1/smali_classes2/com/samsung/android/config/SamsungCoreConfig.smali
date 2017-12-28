.class public Lcom/samsung/android/config/SamsungCoreConfig;
.super Ljava/lang/Object;
.source "SamsungCoreConfig.java"


# static fields
.field public static final DSS_ENABLED:Z = true

.field public static final FEATURE_AOD:Z

.field public static final FEATURE_AUDIO_SPEAKER_LR_SWITCHING:Z = true

.field public static final FEATURE_CAMERA_ROTATION:Z = true

.field public static final FEATURE_CAR_MODE:Z = true

.field public static final FEATURE_COCKTAIL:Z = true

.field public static final FEATURE_CONVENTIONAL_MODE:Z = true

.field public static final FEATURE_COVER:Z = true

.field public static final FEATURE_DESKTOP_MODE:Z = true

.field public static final FEATURE_HIDE_NAVIBAR:Z

.field public static final FEATURE_HORIZONTAL_MODE:Z = false

.field public static final FEATURE_KEYBOARD_COVER:Z = true

.field public static final FEATURE_PACKAGE_CONFIGURATIONS_ENABLED:Z = true

.field public static final FEATURE_REDUCE_SCREEN:Z = true

.field public static final FEATURE_SAMSUNG_SERVICES:Z = true

.field public static final FEATURE_SAMSUNG_STARTING_WINDOW:Z = true

.field public static final FEATURE_SAMSUNG_STARTING_WINDOW_AUTO_CAPTURE:Z = false

.field public static final FEATURE_SF_EFFECTS:Z = true

.field public static final NAVIGATION_BAR_FEATURE:Ljava/lang/String; = "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

.field private static final TAG:Ljava/lang/String; = "SamsungCoreConfig"

.field public static final VERSION_AOD:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    sget v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_AOD:Z

    const-string v0, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput-boolean v2, Lcom/samsung/android/config/SamsungCoreConfig;->FEATURE_HIDE_NAVIBAR:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VERSION_AOD="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/config/SamsungCoreConfig;->VERSION_AOD:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FEATURE_COCKTAIL="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FEATURE_REDUCE_SCREEN="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FEATURE_CAMERA_ROTATION="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FEATURE_HORIZONTAL_MODE="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
