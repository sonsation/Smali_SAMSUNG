.class public Lcom/samsung/android/desktopmode/DesktopModeFeature;
.super Ljava/lang/Object;
.source "DesktopModeFeature.java"


# static fields
.field public static final DEBUG:Z

.field public static final ENABLED:Z = false

.field public static final LAUNCH_APP_FREEFORM:Z = false

.field public static final REMOVE_ALL_TASKS:Z = true

.field public static final REMOVE_HOME_TASK:Z = true

.field public static final SHOW_ONGOING_NOTIFICATION:Z = false

.field public static final SWITCH_TASK_STACKS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
