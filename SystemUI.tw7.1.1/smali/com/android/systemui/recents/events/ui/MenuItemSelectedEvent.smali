.class public Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "MenuItemSelectedEvent.java"


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput p1, p0, Lcom/android/systemui/recents/events/ui/MenuItemSelectedEvent;->type:I

    return-void
.end method