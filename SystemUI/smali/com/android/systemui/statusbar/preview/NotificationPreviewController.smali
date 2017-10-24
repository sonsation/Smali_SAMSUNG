.class public Lcom/android/systemui/statusbar/preview/NotificationPreviewController;
.super Ljava/lang/Object;
.source "NotificationPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;,
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;,
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;,
        Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mChangePreview:Ljava/lang/Runnable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

.field private mDrawStackScrollerBackground:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

.field private mIsPreviewFocused:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preview/NotificationPreview;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreText:Landroid/widget/TextView;

.field private mShouldClearStackScrollerBackground:Z

.field private mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

.field private mTimeOut:Ljava/lang/Runnable;

.field private mTopPadding:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mShouldClearStackScrollerBackground:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 1
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->findPreviewByIcon(Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V
    .locals 0
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .param p2, "add"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Landroid/view/View;Z)V
    .locals 0
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performIconAnim(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 0
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDrawStackScrollerBackground:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$2;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$3;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$4;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mContext:Landroid/content/Context;

    .line 226
    return-void
.end method

.method private deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 3
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v2, 0x0

    .line 441
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 442
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsFirstAdded(Z)V

    .line 444
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 445
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V

    .line 440
    :cond_0
    return-void
.end method

.method private displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 8
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v4, 0x1

    .line 341
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    return-void

    .line 345
    :cond_0
    move-object v2, p1

    .line 346
    .local v2, "newPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v1

    .line 348
    .local v1, "indexOfPreview":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 349
    new-instance v3, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$6;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    .line 359
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 360
    .local v0, "displayedPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 364
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    .end local v0    # "displayedPreview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 371
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    return-void

    .line 366
    :cond_3
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V

    .line 367
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    goto :goto_0
.end method

.method private findPreviewByIcon(Landroid/view/View;)Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .locals 5
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 168
    .local v2, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 169
    return-object v2

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1
    return-object v4
.end method

.method private getIndexOfPreviewDisplayed()I
    .locals 3

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 156
    .local v1, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    return v0

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private indexOfFirstAddedPreview()I
    .locals 3

    .prologue
    .line 429
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 431
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 432
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    return v1

    .line 431
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private isSameAsPreviewArray(Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preview/NotificationPreview;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    const/4 v5, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 232
    .local v2, "oldSize":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 234
    .local v1, "newSize":I
    if-ne v2, v1, :cond_2

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 236
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    return v5

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 242
    .end local v0    # "i":I
    :cond_2
    return v5
.end method

.method private performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V
    .locals 5
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;
    .param p2, "add"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    .line 179
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mShouldClearStackScrollerBackground:Z

    .line 180
    if-eqz p2, :cond_1

    .line 181
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 182
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandedNotificationPreview(Z)V

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDrawStackScrollerBackground:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performAddAnim(Ljava/lang/Runnable;)V

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mChangePreview:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    .line 201
    return-void

    .line 188
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController$5;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewController;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 197
    .local v0, "onFinishedRunnable":Ljava/lang/Runnable;
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->performRemoveAnim(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 204
    .end local v0    # "onFinishedRunnable":Ljava/lang/Runnable;
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    move p2, v2

    .end local p2    # "add":Z
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updatePreviewFousibility(Z)V

    .line 176
    return-void
.end method

.method private performIconAnim(Landroid/view/View;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->performIconScaleAnim(Landroid/view/View;Z)V

    .line 220
    :cond_0
    return-void
.end method

.method private reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V
    .locals 3
    .param p1, "np"    # Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .prologue
    const/4 v2, 0x0

    .line 412
    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    .line 416
    return-void

    .line 419
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->setIsClicked(Z)V

    .line 420
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performIconAnim(Landroid/view/View;Z)V

    .line 422
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 423
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->performAnim(Lcom/android/systemui/statusbar/preview/NotificationPreview;Z)V

    .line 411
    :cond_1
    return-void
.end method

.method private updatePreviewFousibility(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIsPreviewFocused:Z

    if-eq v0, p1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/swipe/SwipeAnimator;->startPreviewFocusAnim(Z)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateHelpText(Z)V

    .line 216
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIsPreviewFocused:Z

    .line 207
    :cond_2
    return-void
.end method


# virtual methods
.method public getTopPadding()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    return v0
.end method

.method public isPreviewDoubleTapped(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v0

    .line 486
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getRow()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 490
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset()V

    .line 475
    const/4 v0, 0x1

    return v0

    .line 477
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 385
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 390
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 391
    .local v0, "N":I
    const/4 v2, 0x0

    .line 392
    .local v2, "needToRefresh":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 393
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 394
    .local v3, "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 395
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 396
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->deleteFirstAddedPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 397
    const/4 v2, 0x1

    .line 392
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    goto :goto_1

    .line 404
    .end local v3    # "np":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_3
    if-eqz v2, :cond_4

    .line 406
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updateNotificationPreviewList(Ljava/util/ArrayList;)V

    .line 384
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "needToRefresh":Z
    :cond_4
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 468
    return-void
.end method

.method public setIconContainer(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;)V
    .locals 2
    .param p1, "npi"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setOnClickEvent(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mDragListener:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setCallback(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;)V

    .line 449
    return-void
.end method

.method public setSwipeAnimator(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/android/systemui/swipe/SwipeAnimator;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mSwipeAnimator:Lcom/android/systemui/swipe/SwipeAnimator;

    .line 480
    return-void
.end method

.method public setTopPadding(I)V
    .locals 3
    .param p1, "padding"    # I

    .prologue
    const/4 v2, 0x0

    .line 456
    iput p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 459
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mTopPadding:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 460
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    return-void
.end method

.method public shouldDrawBackground()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mShouldClearStackScrollerBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateIconContainerVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setVisibility(I)V

    .line 379
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset()V

    .line 376
    :cond_0
    return-void

    .line 377
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateNotificationPreviewList(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/preview/NotificationPreview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/preview/NotificationPreview;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->isSameAsPreviewArray(Ljava/util/ArrayList;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v9, 0x0

    .line 248
    .local v9, "isListUpdated":Z
    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mList:Ljava/util/ArrayList;

    .line 249
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    .local v2, "N":I
    const/4 v14, 0x0

    .line 252
    .local v14, "toShowCount":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v13, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v12, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v2, :cond_2

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isFirstAdded()Z

    move-result v17

    if-nez v17, :cond_0

    .line 257
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->getPreviewIcon()Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 246
    .end local v2    # "N":I
    .end local v7    # "i":I
    .end local v9    # "isListUpdated":Z
    .end local v12    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13    # "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "toShowCount":I
    :cond_1
    const/4 v9, 0x1

    .restart local v9    # "isListUpdated":Z
    goto :goto_0

    .line 260
    .restart local v2    # "N":I
    .restart local v7    # "i":I
    .restart local v12    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v13    # "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v14    # "toShowCount":I
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 262
    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 264
    .local v15, "v":Landroid/view/View;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    instance-of v0, v15, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 262
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 265
    :cond_3
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 269
    .end local v15    # "v":Landroid/view/View;
    :cond_4
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "v$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 270
    .restart local v15    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 273
    .end local v15    # "v":Landroid/view/View;
    :cond_5
    if-lez v14, :cond_f

    .line 274
    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v14, v0, :cond_9

    .line 275
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v14, :cond_7

    .line 276
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 277
    .local v8, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-nez v17, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 275
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 283
    .end local v8    # "imgView":Landroid/widget/ImageView;
    :cond_7
    const/4 v7, 0x0

    :goto_6
    if-ge v7, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_f

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, "actual":Landroid/view/View;
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 286
    .local v5, "expected":Landroid/view/View;
    if-ne v3, v5, :cond_8

    .line 283
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 289
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;I)V

    goto :goto_7

    .line 293
    .end local v3    # "actual":Landroid/view/View;
    .end local v5    # "expected":Landroid/view/View;
    :cond_9
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v14, :cond_b

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v7, v0, :cond_b

    .line 294
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 295
    .restart local v8    # "imgView":Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    if-nez v17, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 293
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 301
    .end local v8    # "imgView":Landroid/widget/ImageView;
    :cond_b
    const/4 v7, 0x0

    :goto_9
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v7, v0, :cond_d

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 303
    .restart local v3    # "actual":Landroid/view/View;
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 304
    .restart local v5    # "expected":Landroid/view/View;
    if-ne v3, v5, :cond_c

    .line 301
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;I)V

    goto :goto_a

    .line 311
    .end local v3    # "actual":Landroid/view/View;
    .end local v5    # "expected":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    :goto_b
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v7, v0, :cond_e

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->removeView(Landroid/view/View;)V

    .line 311
    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    .line 315
    :cond_e
    add-int/lit8 v10, v14, -0x3

    .line 316
    .local v10, "moreCount":I
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f100253

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setGravity(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "+"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mMoreText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->addView(Landroid/view/View;)V

    .line 324
    .end local v10    # "moreCount":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->indexOfFirstAddedPreview()I

    move-result v6

    .line 325
    .local v6, "firstAddedPreview":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_10

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/preview/NotificationPreview;

    .line 328
    .local v11, "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/preview/NotificationPreview;->isClicked()Z

    move-result v17

    if-nez v17, :cond_10

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->displayPreview(Lcom/android/systemui/statusbar/preview/NotificationPreview;)V

    .line 333
    .end local v11    # "preview":Lcom/android/systemui/statusbar/preview/NotificationPreview;
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->getIndexOfPreviewDisplayed()I

    move-result v4

    .line 334
    .local v4, "displayedPreview":I
    if-eqz v9, :cond_11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_11

    .line 335
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->updatePreviewFousibility(Z)V

    .line 245
    :cond_11
    return-void
.end method

.method public updateWhiteWallpaperState(Z)V
    .locals 1
    .param p1, "white"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->mIconContainer:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->updateWhiteWallpaperIcon(Z)V

    .line 493
    :cond_0
    return-void
.end method
