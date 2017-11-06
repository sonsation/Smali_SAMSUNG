.class final Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "NormalVolumeControlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeSeekBarAccessibilityDelegate"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 403
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 404
    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/high16 v7, 0x10000

    .line 408
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 409
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 413
    .local v1, "eventType":I
    const v4, 0x8000

    if-ne v1, v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    .line 415
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 416
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 417
    const/16 v4, 0x4000

    .line 418
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 420
    .local v2, "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0205

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 421
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumePercent()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "volumeString":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/volume/NormalVolumeControlImpl$VolumeSeekBarAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getSeekBarDescription(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 424
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 426
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "volumeString":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 429
    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    goto :goto_0
.end method
