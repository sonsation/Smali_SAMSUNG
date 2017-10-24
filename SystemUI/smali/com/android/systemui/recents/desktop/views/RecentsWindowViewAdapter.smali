.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecentsWindowViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final LAYOUT_CHANGE_ANIMATION_DURATION:I

.field mActivityManager:Landroid/app/ActivityManager;

.field mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

.field mContext:Landroid/content/Context;

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field mIam:Landroid/app/IActivityManager;

.field mIsSceneTransitionRequested:Z

.field mRemoveView:Landroid/view/View;

.field mRootView:Landroid/view/ViewGroup;

.field private mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    .line 64
    iput v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    .line 68
    const/16 v0, 0x14d

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->LAYOUT_CHANGE_ANIMATION_DURATION:I

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mActivityManager:Landroid/app/ActivityManager;

    .line 82
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    .line 83
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getAttr()Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f020455

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    return-void
.end method

.method private onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$2;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 482
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    .line 250
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    .line 248
    return-void
.end method

.method private requestUpdateRecentsLayout(I)V
    .locals 10
    .param p1, "removePosition"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 354
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayout()V

    .line 356
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 357
    .local v0, "firstVisiblePos":I
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget-object v5, v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastVisibleItemPosition()I

    move-result v3

    .line 358
    .local v3, "lastVisiblePos":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-gt v2, v3, :cond_1

    .line 359
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .line 360
    .local v1, "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    if-eqz v1, :cond_0

    .line 361
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    .line 358
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    :cond_1
    new-instance v4, Landroid/transition/ChangeBounds;

    invoke-direct {v4}, Landroid/transition/ChangeBounds;-><init>()V

    .line 366
    .local v4, "transit":Landroid/transition/Transition;
    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 367
    sget-object v5, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 368
    new-instance v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 398
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 399
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    invoke-virtual {v4, v5, v9}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 400
    iput-object v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    .line 402
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v5, v4}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 403
    iput-boolean v9, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    .line 352
    return-void
.end method

.method private startActivityFromRecents(ILandroid/app/ActivityOptions;)Z
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIam:Landroid/app/IActivityManager;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v1, 0x1

    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const/4 v1, 0x0

    return v1
.end method

.method private updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 13
    .param p1, "holder"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .prologue
    const/16 v12, 0x13

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 407
    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v4

    .line 408
    .local v4, "position":I
    if-ne v4, v10, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->getItemCount()I

    move-result v5

    .line 414
    .local v5, "taskCount":I
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 415
    .local v2, "itemViewParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 418
    .local v1, "focusViewParams":Landroid/widget/FrameLayout$LayoutParams;
    if-gt v5, v11, :cond_1

    .line 419
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutHeightRow2:I

    .line 418
    :goto_0
    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 422
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 423
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 424
    iput v10, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 425
    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    .line 426
    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    .line 427
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 428
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 429
    const/16 v6, 0x11

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 431
    packed-switch v5, :pswitch_data_0

    .line 472
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-gt v6, v11, :cond_5

    .line 473
    iput v8, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    .line 478
    :goto_2
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    return-void

    .line 419
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewHeight:I

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v7, v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewFocusPadding:I

    add-int/2addr v6, v7

    goto :goto_0

    .line 433
    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    .line 437
    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 438
    if-nez v4, :cond_2

    .line 439
    const/16 v6, 0x15

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 440
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 442
    :cond_2
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 443
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    div-int/lit8 v6, v6, 0x2

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 448
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewWidth:I

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v7, v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewGap:I

    mul-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 449
    .local v0, "centerWidth":I
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    sub-int/2addr v6, v0

    div-int/lit8 v3, v6, 0x2

    .line 450
    .local v3, "otherWidth":I
    if-nez v4, :cond_3

    .line 451
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 452
    const/16 v6, 0x15

    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 453
    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 454
    iput v0, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    .line 456
    :cond_4
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 457
    iput v12, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 463
    .end local v0    # "centerWidth":I
    .end local v3    # "otherWidth":I
    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mRecentsLayoutWidth:I

    div-int/lit8 v6, v6, 0x4

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_1

    .line 475
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mAttr:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager$Attributes;->mTaskViewBottomMargin:I

    iput v6, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addTaskAt(Lcom/android/systemui/recents/model/Task;I)V
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "position"    # I

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 575
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemInserted(I)V

    .line 573
    return-void
.end method

.method public bindViews(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRootView:Landroid/view/ViewGroup;

    .line 87
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 307
    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 308
    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onBindViewHolder() - position=%d\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 523
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 522
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 286
    const-string/jumbo v2, "RecentsWindowViewAdapter"

    const-string/jumbo v3, "onCreateViewHolder()\n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f04013d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "convertView":Landroid/view/View;
    new-instance v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Landroid/view/View;)V

    .line 290
    .local v1, "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    const v2, 0x7f130377

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    .line 291
    const v2, 0x7f130378

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    .line 292
    const v2, 0x7f130379

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    .line 293
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    .line 294
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    .line 295
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130369

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    .line 297
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f13037a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    .line 301
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    const v3, 0x7f130361

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewThumbnail;

    iput-object v2, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 303
    return-object v1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 312
    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 313
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 314
    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v1

    .line 315
    .local v1, "position":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 316
    return-void

    .line 319
    :cond_0
    const-string/jumbo v6, "RecentsWindowViewAdapter"

    const-string/jumbo v7, "onViewAttachedToWindow() - position=%d\n"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v5, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->startedAnimation:Z

    .line 322
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    .line 325
    .local v3, "task":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 326
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-boolean v6, v3, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v6, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v0

    .line 327
    :goto_0
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 328
    iget v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayOrientation:I

    iget-object v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mDisplayRect:Landroid/graphics/Rect;

    .line 327
    invoke-virtual {v6, v3, v0, v7, v8}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 330
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setDimAlpha(F)V

    .line 331
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/model/Task;->addCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 332
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 334
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 335
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 336
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v6, :cond_1

    .line 342
    iget-object v6, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v6, v6, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ne v6, v1, :cond_3

    :goto_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    .line 348
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->updateRecentsLayout(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewAttachAnimation(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    .line 312
    return-void

    .line 326
    :cond_2
    const/4 v0, 0x0

    .local v0, "isDisabledInSafeMode":Z
    goto :goto_0

    .end local v0    # "isDisabledInSafeMode":Z
    :cond_3
    move v4, v5

    .line 347
    goto :goto_1
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 496
    check-cast p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .end local p1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;)V
    .locals 8
    .param p1, "holder"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 498
    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v0

    .line 499
    .local v0, "position":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    const-string/jumbo v2, "RecentsWindowViewAdapter"

    const-string/jumbo v3, "onViewDetachedFromWindow() - position=%d\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 505
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 506
    iput-boolean v7, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->startedAnimation:Z

    .line 508
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 509
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->contentView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 510
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 511
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    :cond_1
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 10
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 528
    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 529
    .local v4, "taskId":I
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 531
    .local v3, "position":I
    if-ltz v3, :cond_2

    .line 532
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    .line 533
    .local v0, "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    new-instance v5, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;-><init>()V

    .line 534
    .local v5, "updateEvent":Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;
    if-eqz v0, :cond_0

    .line 535
    iget-object v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    iput-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mRemoveView:Landroid/view/View;

    .line 536
    iget-object v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigX:I

    .line 537
    iget-object v6, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigY:I

    .line 540
    :cond_0
    sget-boolean v6, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v6}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 541
    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "lockComponentName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v2}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    .end local v2    # "lockComponentName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;

    invoke-direct {v7, p0, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 558
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v1, p1, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 561
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6, p1, v9, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 562
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyItemRemoved(I)V

    .line 564
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 565
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->requestUpdateRecentsLayout(I)V

    .line 527
    .end local v0    # "holder":Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v5    # "updateEvent":Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;
    :cond_2
    return-void
.end method

.method public setNewStackTasks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->reload()V

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method

.method public startTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 8
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 254
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mTaskList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 255
    .local v1, "position":I
    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 256
    .local v2, "taskId":I
    const-string/jumbo v3, "RecentsWindowViewAdapter"

    const-string/jumbo v4, "startTask() - %s\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 260
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startActivityFromRecents(ILandroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v4, v1}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 253
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 264
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method
