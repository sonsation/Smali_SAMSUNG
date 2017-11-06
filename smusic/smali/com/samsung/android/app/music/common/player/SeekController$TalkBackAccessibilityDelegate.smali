.class Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SeekController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TalkBackAccessibilityDelegate"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiUpdater"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 857
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 858
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mContext:Landroid/content/Context;

    .line 859
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 860
    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 11
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 864
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 865
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    .line 869
    .local v1, "eventType":I
    const v7, 0x8000

    if-ne v1, v7, :cond_4

    .line 870
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mContext:Landroid/content/Context;

    const-string v8, "accessibility"

    .line 871
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 872
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 873
    const/16 v7, 0x4000

    .line 874
    invoke-static {v7}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 875
    .local v6, "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getCurrentTime()J

    move-result-wide v2

    .line 876
    .local v2, "currentTime":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    .line 877
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getDuration()J

    move-result-wide v4

    .line 878
    .local v4, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 879
    :goto_2
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;->mContext:Landroid/content/Context;

    long-to-int v9, v2

    long-to-int v10, v4

    .line 880
    invoke-static {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getSeekBarDescription(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v8

    .line 879
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    const/high16 v7, 0x10000

    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 882
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 876
    .end local v4    # "duration":J
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 878
    .restart local v4    # "duration":J
    :cond_3
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 884
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "currentTime":J
    .end local v4    # "duration":J
    .end local v6    # "talkBackEvent":Landroid/view/accessibility/AccessibilityEvent;
    :cond_4
    const/4 v7, 0x4

    if-ne v1, v7, :cond_0

    .line 887
    const/high16 v7, 0x10000

    invoke-virtual {p2, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    goto :goto_0
.end method
