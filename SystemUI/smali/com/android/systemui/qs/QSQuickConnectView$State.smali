.class public Lcom/android/systemui/qs/QSQuickConnectView$State;
.super Ljava/lang/Object;
.source "QSQuickConnectView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSQuickConnectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public mCollapsed:Landroid/widget/RemoteViews;

.field public mExpanded:Landroid/widget/RemoteViews;

.field public mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSQuickConnectView$State;Z)Z
    .locals 3
    .param p1, "other"    # Lcom/android/systemui/qs/QSQuickConnectView$State;
    .param p2, "check"    # Z

    .prologue
    .line 289
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSQuickConnectView$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSQuickConnectView$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 291
    :cond_1
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    if-ne v1, v2, :cond_6

    .line 292
    iget-object v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 294
    .local v0, "changed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mIsExpanded:Z

    .line 295
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mCollapsed:Landroid/widget/RemoteViews;

    .line 296
    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    iput-object v1, p1, Lcom/android/systemui/qs/QSQuickConnectView$State;->mExpanded:Landroid/widget/RemoteViews;

    .line 297
    :cond_5
    return v0

    .line 291
    .end local v0    # "changed":Z
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 293
    .end local v0    # "changed":Z
    :cond_7
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0
.end method
