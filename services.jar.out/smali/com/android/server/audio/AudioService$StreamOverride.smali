.class Lcom/android/server/audio/AudioService$StreamOverride;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StreamOverride"
.end annotation


# static fields
.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field static sDelayMs:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctxt"    # Landroid/content/Context;

    .prologue
    .line 10115
    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 10117
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 10116
    invoke-static {v1}, Lcom/android/server/audio/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    .line 10119
    new-instance v1, Lcom/android/server/audio/AudioService$StreamOverride;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$StreamOverride;-><init>()V

    .line 10118
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 10113
    return-void
.end method

.method private static updateDefaultStreamOverrideDelay(Z)V
    .locals 3
    .param p0, "touchExploreEnabled"    # Z

    .prologue
    .line 10128
    if-eqz p0, :cond_1

    .line 10129
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    .line 10133
    :goto_0
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Touch exploration enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10134
    const-string/jumbo v2, " stream override delay is now "

    .line 10133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10134
    sget v2, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    .line 10133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10134
    const-string/jumbo v2, " ms"

    .line 10133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10127
    :cond_0
    return-void

    .line 10131
    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService$StreamOverride;->sDelayMs:I

    goto :goto_0
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 10124
    invoke-static {p1}, Lcom/android/server/audio/AudioService$StreamOverride;->updateDefaultStreamOverrideDelay(Z)V

    .line 10123
    return-void
.end method
