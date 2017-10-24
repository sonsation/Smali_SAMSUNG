.class public Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "UpdateLayoutEvent.java"


# instance fields
.field public removeViewOrigX:I

.field public removeViewOrigY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    .line 27
    iput v0, p0, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigX:I

    .line 28
    iput v0, p0, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigY:I

    .line 26
    return-void
.end method
