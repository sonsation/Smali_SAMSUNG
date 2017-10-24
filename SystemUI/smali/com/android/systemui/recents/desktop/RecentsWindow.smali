.class public Lcom/android/systemui/recents/desktop/RecentsWindow;
.super Landroid/app/Dialog;
.source "RecentsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownScrollButton:Landroid/view/View;

.field mEmptyView:Landroid/view/View;

.field mEmptyViewStub:Landroid/view/ViewStub;

.field private mRecentsCloseAllButton:Landroid/view/View;

.field mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

.field mRootView:Landroid/widget/FrameLayout;

.field private mScrollButtonContainer:Landroid/widget/LinearLayout;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mUpScrollButton:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/RecentsWindow;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const v0, 0x7f1001de

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 82
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020450

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->requestWindowFeature(I)Z

    .line 80
    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 173
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 176
    const/16 v3, 0x82f

    .line 177
    const/16 v4, 0x200

    .line 178
    const/4 v5, -0x3

    move v2, v1

    .line 173
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 180
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 181
    const-string/jumbo v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    const v1, 0x7f1001df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 184
    return-object v0
.end method

.method private updateCloseAllButtonLayout()V
    .locals 10

    .prologue
    .line 315
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v0

    .line 316
    .local v0, "attr":Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 320
    .local v5, "taskCount":I
    iget v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    iget v7, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    mul-int/2addr v7, v5

    iget v8, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    add-int/lit8 v9, v5, -0x1

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    .line 321
    .local v1, "dx":I
    const/4 v6, 0x4

    if-gt v5, v6, :cond_0

    .line 322
    iget v3, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginTopRow1:I

    .line 323
    .local v3, "marginTop":I
    iget v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginRight:I

    add-int v2, v6, v1

    .line 329
    .local v2, "marginRight":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 330
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 331
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 313
    return-void

    .line 325
    .end local v2    # "marginRight":I
    .end local v3    # "marginTop":I
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget v3, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginTopRow2:I

    .line 326
    .restart local v3    # "marginTop":I
    iget v2, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mCloseAllMarginRight:I

    .restart local v2    # "marginRight":I
    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 264
    return-void
.end method

.method public handleMoveButtonsEnabled(ZZ)V
    .locals 7
    .param p1, "enableUp"    # Z
    .param p2, "enableDown"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    .line 377
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v3, "handleArrowButtonsEnabled(%b, %b)\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 380
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p2, v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 386
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 376
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 380
    goto :goto_0

    :cond_3
    move v1, v2

    .line 385
    goto :goto_1
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 202
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 272
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 274
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 275
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 271
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 259
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 258
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    .line 305
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(HideRecentsEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    .line 304
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    .line 295
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(LaunchTaskFailedEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 294
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 290
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;

    .prologue
    .line 300
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onBusEvent(UpdateLayoutEvent)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonLayout()V

    .line 299
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 343
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    const-string/jumbo v2, "Recents_Window"

    const-string/jumbo v3, "OnClickRemoveAllButton"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 350
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 352
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_1

    .line 353
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 350
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 358
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2

    .line 361
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    goto :goto_0

    .line 365
    .end local v0    # "i":I
    .end local v1    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollUpVisibleLine()V

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollDownVisibleLine()V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x7f130372
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-string/jumbo v1, "Recents_Window"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const v1, 0x7f04013b

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setContentView(I)V

    .line 132
    const v1, 0x7f130177

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    .line 135
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/systemui/recents/desktop/RecentsWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow$1;-><init>(Lcom/android/systemui/recents/desktop/RecentsWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    const v1, 0x7f130370

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V

    .line 152
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->bindViews(Landroid/view/ViewGroup;)V

    .line 153
    const v1, 0x7f130375

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f130371

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mScrollButtonContainer:Landroid/widget/LinearLayout;

    .line 157
    const v1, 0x7f130372

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f130373

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    .line 160
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f130374

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 166
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 167
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setCanceledOnTouchOutside(Z)V

    .line 169
    invoke-virtual {p0, p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 126
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 280
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onDetachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 282
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 283
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    .line 216
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onKeyDown(%s)\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sparse-switch p1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 219
    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 220
    return v5

    .line 223
    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 224
    return v5

    .line 227
    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 228
    return v5

    .line 231
    :sswitch_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 232
    return v5

    .line 235
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->launchFocusedTask()V

    .line 236
    return v5

    .line 239
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 244
    :goto_0
    return v5

    .line 242
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 248
    :sswitch_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 249
    return v5

    .line 217
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_6
        0x70 -> :sswitch_6
    .end sparse-switch
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 410
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onShow"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 409
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateRecentsTasks()V

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateCloseAllButtonLayout()V

    .line 188
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 209
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 211
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 208
    return-void
.end method

.method public onTaskCountChanged(I)V
    .locals 3
    .param p1, "taskCount"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 393
    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :goto_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :goto_1
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mUpScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mDownScrollButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsCloseAllButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v0, "Recents_Window"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 196
    return-void
.end method

.method public updateEmptyViewVisibility(I)V
    .locals 2
    .param p1, "taskCount"    # I

    .prologue
    const/4 v1, 0x0

    .line 335
    if-lez p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRecentsTasks()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    .line 89
    const-string/jumbo v9, "Recents_Window"

    const-string/jumbo v10, "updateRecentsTasks is getting called"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v3

    .line 92
    .local v3, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 93
    .local v4, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v4, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/RecentsWindow;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 98
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 99
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v9

    if-nez v9, :cond_1

    .line 100
    iget-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    :goto_0
    const/4 v10, -0x1

    invoke-virtual {v3, v4, v10, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 102
    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 106
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    .line 107
    .local v7, "topTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v7, :cond_2

    .line 108
    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskThumbnail(Lcom/android/systemui/recents/model/Task;)V

    .line 111
    :cond_2
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 112
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 113
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    .line 114
    .local v6, "taskTotalCount":I
    if-lt v6, v8, :cond_4

    .line 115
    .local v8, "visibleCount":I
    :goto_1
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 116
    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 117
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v4, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 118
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mRecentsWindowView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v10, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->reload(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 120
    iget-object v9, p0, Lcom/android/systemui/recents/desktop/RecentsWindow;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 121
    .local v5, "taskCount":I
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->onTaskCountChanged(I)V

    .line 122
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/desktop/RecentsWindow;->updateEmptyViewVisibility(I)V

    .line 88
    return-void

    .line 100
    .end local v2    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v5    # "taskCount":I
    .end local v6    # "taskTotalCount":I
    .end local v7    # "topTask":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "visibleCount":I
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .restart local v2    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v6    # "taskTotalCount":I
    .restart local v7    # "topTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    move v8, v6

    .line 114
    goto :goto_1
.end method
