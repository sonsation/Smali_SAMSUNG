.class public Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;
.super Landroid/widget/Button;
.source "InclusiveDelayButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;,
        Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    }
.end annotation


# instance fields
.field private isClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->isClicked:Z

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->isClicked:Z

    return p1
.end method


# virtual methods
.method public performClick()Z
    .locals 4

    .prologue
    .line 24
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->isClicked:Z

    if-nez v1, :cond_0

    .line 25
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;->isClicked:Z

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;

    new-instance v1, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$1;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;-><init>(Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$IHandlerMessage;)V

    .line 33
    .local v0, "handler":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v1

    .line 36
    .end local v0    # "handler":Lcom/samsung/android/app/music/milk/dialog/component/InclusiveDelayButton$WeakRefHandler;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
