.class public Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;
.super Lcom/android/systemui/recents/events/EventBus$Event;
.source "LaunchTaskEvent.java"


# instance fields
.field public isFreeformDragging:Z

.field public final screenPinningRequested:Z

.field public screenRatioChangeRequested:Z

.field public snapViewRequested:Z

.field public final targetTaskBounds:Landroid/graphics/Rect;

.field public final targetTaskStack:I

.field public final task:Lcom/android/systemui/recents/model/Task;

.field public final taskView:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/systemui/recents/events/EventBus$Event;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->snapViewRequested:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenRatioChangeRequested:Z

    iput-object p1, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskBounds:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->targetTaskStack:I

    iput-boolean p5, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenPinningRequested:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZ)V

    iput-boolean p6, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->isFreeformDragging:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    iput-boolean p7, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->snapViewRequested:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZZ)V

    iput-boolean p8, p0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;->screenRatioChangeRequested:Z

    return-void
.end method
