.class public Lcom/android/systemui/statusbar/stack/StackViewState;
.super Lcom/android/systemui/statusbar/stack/ViewState;
.source "StackViewState.java"


# instance fields
.field public belowSpeedBump:Z

.field public clipTopAmount:I

.field public dark:Z

.field public dimmed:Z

.field public height:I

.field public hideSensitive:Z

.field public isBottomBar:Z

.field public isBottomClipped:Z

.field public location:I

.field public notGoneIndex:I

.field public shadowAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    .line 24
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/ViewState;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 72
    instance-of v1, p1, Lcom/android/systemui/statusbar/stack/StackViewState;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/android/systemui/statusbar/stack/StackViewState;

    .line 74
    .local v0, "svs":Lcom/android/systemui/statusbar/stack/StackViewState;
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 75
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 76
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->shadowAlpha:F

    .line 77
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 78
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 79
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 80
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 81
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->notGoneIndex:I

    .line 82
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 83
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    .line 85
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomBar:Z

    .line 70
    .end local v0    # "svs":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_0
    return-void
.end method
