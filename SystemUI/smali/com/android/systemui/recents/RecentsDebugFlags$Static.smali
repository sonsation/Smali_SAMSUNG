.class public Lcom/android/systemui/recents/RecentsDebugFlags$Static;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsDebugFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Static"
.end annotation


# static fields
.field public static EnableAppList:Z

.field public static EnableBixby:Z

.field public static EnableCloseAllLayout:Z

.field public static EnableDesktopMode:Z

.field public static EnableDozeTrigger:Z

.field public static EnableFreeformInTaskStack:Z

.field public static EnableLowerAppbarHeight:Z

.field public static EnableMoreButton:Z

.field public static EnableMoreRound:Z

.field public static final EnableRecentsAppLock:Z

.field public static EnableSecondViewExpanded:Z

.field public static EnableSnapAction:Z

.field public static EnableSplitLayout:Z

.field public static EnableSpreadAnimation:Z

.field public static EnableVisibilityValueForTitleColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    .line 67
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    .line 69
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    .line 71
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    .line 73
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    .line 75
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    .line 77
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    .line 79
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    .line 81
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    .line 83
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableVisibilityValueForTitleColor:Z

    .line 85
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    .line 89
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    .line 91
    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    .line 93
    sput-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBixby:Z

    .line 98
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_SystemUI_SupportRecentAppProtection"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
