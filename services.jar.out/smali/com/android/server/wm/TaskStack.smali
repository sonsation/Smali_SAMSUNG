.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;
.implements Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;


# static fields
.field private static final ADJUSTED_STACK_FRACTION_MIN:F = 0.3f

.field private static final IME_ADJUST_DIM_AMOUNT:F = 0.25f


# instance fields
.field private ensureToken:Z

.field mAdjBoundsForSnapWindow:Z

.field private mAdjustDividerAmount:F

.field private mAdjustImeAmount:F

.field private final mAdjustedBounds:Landroid/graphics/Rect;

.field private mAdjustedForIme:Z

.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBounds:Landroid/graphics/Rect;

.field private final mBoundsAfterRotation:Landroid/graphics/Rect;

.field private mBoundsAnimating:Z

.field mDeferDetach:Z

.field mDensity:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDockedStackMinimizeThickness:I

.field private mDragResizing:Z

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFinalAdjustedImeBounds:Landroid/graphics/Rect;

.field private mFullMinimizedHeight:I

.field private mFullscreen:Z

.field private final mFullyAdjustedImeBounds:Landroid/graphics/Rect;

.field private mHideColorLayerByKeyguard:Z

.field private mImeGoingAway:Z

.field private mImeWin:Lcom/android/server/wm/WindowState;

.field private mInitAdjustedImeBoundsBottom:I

.field private mMinimizeAmount:F

.field mRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

.field final mStackId:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpAdjustedBounds:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private prevRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 119
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 141
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    .line 149
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mHideColorLayerByKeyguard:Z

    .line 150
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    .line 151
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mInitAdjustedImeBoundsBottom:I

    .line 152
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mFullMinimizedHeight:I

    .line 153
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjBoundsForSnapWindow:Z

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    .line 158
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    .line 163
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 164
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 165
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    const v1, 0x1050023

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    .line 167
    const/16 v0, 0x791c

    invoke-static {v0, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 162
    return-void
.end method

.method private adjustForIME(Lcom/android/server/wm/WindowState;)Z
    .locals 28
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v11

    .line 1174
    .local v11, "dockedSide":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v11, v0, :cond_0

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v11, v0, :cond_7

    :cond_0
    const/4 v12, 0x1

    .line 1175
    .local v12, "dockedTopOrBottom":Z
    :goto_0
    if-eqz p1, :cond_8

    if-eqz v12, :cond_8

    .line 1179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 1180
    .local v6, "displayContentRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 1183
    .local v5, "contentBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    .line 1184
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1185
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1187
    .local v14, "imeTop":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v14, v14, v23

    .line 1188
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v14, :cond_1

    .line 1189
    iput v14, v5, Landroid/graphics/Rect;->bottom:I

    .line 1192
    :cond_1
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v22, v23, v24

    .line 1195
    .local v22, "yOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 1197
    .local v7, "dividerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidthInactive()I

    move-result v9

    .line 1200
    .local v9, "dividerWidthInactive":I
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1201
    .local v20, "topVisibleTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1206
    :cond_2
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/wm/DockedStackDividerController;->getMinimalSizeResizableTask(I)I

    move-result v24

    .line 1206
    add-int v18, v23, v24

    .line 1208
    .local v18, "topSnapTargetPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isAutoResizingEnabled()Z

    move-result v23

    if-nez v23, :cond_9

    .line 1209
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    :cond_3
    const/4 v2, 0x0

    .line 1210
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v13

    .line 1213
    .local v13, "imeFocusedStack":Lcom/android/server/wm/TaskStack;
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v11, v0, :cond_11

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v15

    .line 1220
    .local v15, "minTopStackBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    add-int v23, v23, v7

    sub-int v23, v23, v9

    .line 1219
    move/from16 v0, v23

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1224
    .local v3, "bottom":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1226
    .local v4, "bottomStackTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapViewRunning:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1232
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/TaskStack;->mInitAdjustedImeBoundsBottom:I

    .line 1256
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v3, :cond_5

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1262
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1270
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 1271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v24, v0

    int-to-float v0, v3

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v25, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1270
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1273
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1325
    .end local v3    # "bottom":I
    .end local v4    # "bottomStackTaskBounds":Landroid/graphics/Rect;
    :goto_5
    const/16 v23, 0x1

    return v23

    .line 1174
    .end local v5    # "contentBounds":Landroid/graphics/Rect;
    .end local v6    # "displayContentRect":Landroid/graphics/Rect;
    .end local v7    # "dividerWidth":I
    .end local v9    # "dividerWidthInactive":I
    .end local v12    # "dockedTopOrBottom":Z
    .end local v13    # "imeFocusedStack":Lcom/android/server/wm/TaskStack;
    .end local v14    # "imeTop":I
    .end local v15    # "minTopStackBottom":I
    .end local v18    # "topSnapTargetPosition":I
    .end local v20    # "topVisibleTaskBounds":Landroid/graphics/Rect;
    .end local v22    # "yOffset":I
    :cond_7
    const/4 v12, 0x0

    .restart local v12    # "dockedTopOrBottom":Z
    goto/16 :goto_0

    .line 1176
    :cond_8
    const/16 v23, 0x0

    return v23

    .line 1208
    .restart local v5    # "contentBounds":Landroid/graphics/Rect;
    .restart local v6    # "displayContentRect":Landroid/graphics/Rect;
    .restart local v7    # "dividerWidth":I
    .restart local v9    # "dividerWidthInactive":I
    .restart local v14    # "imeTop":I
    .restart local v18    # "topSnapTargetPosition":I
    .restart local v20    # "topVisibleTaskBounds":Landroid/graphics/Rect;
    .restart local v22    # "yOffset":I
    :cond_9
    const/4 v2, 0x1

    .local v2, "areAdjacentTasksOverlapping":Z
    goto/16 :goto_1

    .line 1209
    .end local v2    # "areAdjacentTasksOverlapping":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    .local v2, "areAdjacentTasksOverlapping":Z
    goto/16 :goto_1

    .line 1230
    .end local v2    # "areAdjacentTasksOverlapping":Z
    .restart local v3    # "bottom":I
    .restart local v4    # "bottomStackTaskBounds":Landroid/graphics/Rect;
    .restart local v13    # "imeFocusedStack":Lcom/android/server/wm/TaskStack;
    .restart local v15    # "minTopStackBottom":I
    :cond_b
    move/from16 v3, v18

    goto/16 :goto_2

    .line 1233
    :cond_c
    if-eqz v2, :cond_4

    .line 1235
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1236
    iget v10, v13, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 1237
    .local v10, "dockedBottomStackId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getTopVisibleWindowLocked(I)Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 1238
    .local v21, "topVisibleWin":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v19

    .line 1239
    .local v19, "topTask":Lcom/android/server/wm/Task;
    :goto_6
    if-eqz v19, :cond_d

    .line 1240
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1244
    :cond_d
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v15

    .line 1245
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v22

    sub-int v23, v23, v9

    move/from16 v0, v23

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1249
    .end local v10    # "dockedBottomStackId":I
    .end local v19    # "topTask":Lcom/android/server/wm/Task;
    .end local v21    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mInitAdjustedImeBoundsBottom:I

    move/from16 v23, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v25

    sub-int v24, v24, v25

    sub-int v24, v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 1251
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v9

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/TaskStack;->mInitAdjustedImeBoundsBottom:I

    goto/16 :goto_3

    .line 1238
    .restart local v10    # "dockedBottomStackId":I
    .restart local v21    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :cond_f
    const/16 v19, 0x0

    goto :goto_6

    .line 1266
    .end local v10    # "dockedBottomStackId":I
    .end local v21    # "topVisibleWin":Lcom/android/server/wm/WindowState;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 1267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v24, v0

    int-to-float v0, v3

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v25, v26, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1266
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_4

    .line 1276
    .end local v3    # "bottom":I
    .end local v4    # "bottomStackTaskBounds":Landroid/graphics/Rect;
    .end local v15    # "minTopStackBottom":I
    :cond_11
    sub-int v8, v9, v7

    .line 1283
    .local v8, "dividerWidthDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v7

    add-int v17, v23, v9

    .line 1285
    .local v17, "topBeforeImeAdjust":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v15

    .line 1287
    .restart local v15    # "minTopStackBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v22

    add-int v24, v15, v9

    .line 1286
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1291
    .local v16, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v23

    if-eqz v23, :cond_15

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapViewRunning:Z

    move/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 1306
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1309
    sub-int v25, v16, v17

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    mul-float v25, v25, v26

    int-to-float v0, v8

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v26, v26, v27

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1308
    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1314
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    move/from16 v25, v0

    sub-int v26, v16, v17

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    .line 1320
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    move/from16 v26, v0

    int-to-float v0, v8

    move/from16 v27, v0

    mul-float v26, v26, v27

    .line 1319
    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1318
    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move/from16 v0, v16

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v24, v24, v16

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_5

    .line 1295
    :cond_14
    move/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_7

    .line 1297
    :cond_15
    if-eqz v2, :cond_12

    .line 1299
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v23

    move/from16 v0, v23

    if-ne v0, v11, :cond_12

    .line 1301
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v7

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Lcom/android/server/wm/TaskStack;->getMinTopStackBottom(Landroid/graphics/Rect;I)I

    move-result v15

    .line 1302
    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v23, v23, v24

    sub-int v23, v23, v22

    add-int v24, v15, v9

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v16

    goto/16 :goto_7
.end method

.method private adjustForMinimizedDockedStack(F)Z
    .locals 9
    .param p1, "minimizeAmount"    # F

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1330
    .local v0, "dockSide":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 1335
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    .line 1338
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mFullMinimizedHeight:I

    .line 1341
    .local v1, "topInset":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1344
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    neg-int v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    .line 1345
    sub-float v5, v7, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 1344
    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1346
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1347
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFullMinimizedHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    .line 1348
    sub-float v5, v7, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    .line 1347
    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1346
    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 1385
    .end local v1    # "topInset":I
    :cond_1
    :goto_1
    return v8

    .line 1331
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 1340
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v3, Landroid/graphics/Rect;->top:I

    .restart local v1    # "topInset":I
    goto :goto_0

    .line 1354
    .end local v1    # "topInset":I
    :cond_4
    if-ne v0, v8, :cond_5

    .line 1355
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1356
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1360
    .local v2, "width":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 1361
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1362
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v5, v7, p1

    int-to-float v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1361
    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 1370
    .end local v2    # "width":I
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 1371
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1374
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1375
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1374
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 1376
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    .line 1377
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    sub-float v5, v7, p1

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1376
    iput v4, v3, Landroid/graphics/Rect;->left:I

    goto :goto_1
.end method

.method private alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "adjustedBounds"    # Landroid/graphics/Rect;
    .param p2, "tempInsetBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 289
    iget-boolean v9, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v9, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mSnapViewRunning:Z

    if-nez v9, :cond_6

    .line 294
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v9}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v9

    .line 293
    if-eqz v9, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    if-ne v9, v12, :cond_6

    .line 296
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DockedStackDividerController;->isAdjustedForIme()Z

    move-result v2

    .line 297
    .local v2, "openning":Z
    if-eqz v2, :cond_4

    .line 298
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 300
    iput-boolean v7, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    .line 301
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-interface {v7, v8, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_1

    .line 303
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 304
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v10, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    move v7, v8

    :cond_3
    invoke-interface {v9, v10, v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    .line 305
    iput-boolean v8, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    goto :goto_0

    .line 308
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    if-eqz v7, :cond_5

    .line 309
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-interface {v7, v9, v2}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    .line 310
    iput-boolean v8, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    .line 312
    :cond_5
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 313
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 321
    .end local v2    # "openning":Z
    :cond_6
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    .local v4, "taskNdx":I
    :goto_1
    if-ltz v4, :cond_b

    .line 322
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 323
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 325
    sget-boolean v9, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v9, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isSnapViewing()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 327
    invoke-virtual {v3, v11, v11, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 328
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    .line 321
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 331
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 334
    invoke-virtual {v3, v11, v11, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 335
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    goto :goto_2

    .line 338
    :cond_8
    iget-boolean v9, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    if-ne v9, v12, :cond_9

    .line 339
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_9

    .line 343
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mFinalAdjustedImeBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/android/server/wm/TaskStack;->mInitAdjustedImeBoundsBottom:I

    sub-int v6, v9, v10

    .line 344
    .local v6, "totalMoveDistance":I
    int-to-float v9, v6

    iget v10, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 345
    .local v1, "offsetY":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 346
    .local v5, "tmpAdjustedBoundsForTask":Landroid/graphics/Rect;
    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 347
    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v1

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 348
    invoke-virtual {v3, v5, p2, v7}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_2

    .line 351
    .end local v1    # "offsetY":I
    .end local v5    # "tmpAdjustedBoundsForTask":Landroid/graphics/Rect;
    .end local v6    # "totalMoveDistance":I
    :cond_9
    iget-boolean v9, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v9

    if-ne v9, v12, :cond_a

    move v0, v7

    .line 352
    .local v0, "alignBottom":Z
    :goto_3
    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_2

    .end local v0    # "alignBottom":Z
    :cond_a
    move v0, v8

    .line 351
    goto :goto_3

    .line 288
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_b
    return-void
.end method

.method private computeMaxPosition(I)I
    .locals 4
    .param p1, "maxPosition"    # I

    .prologue
    .line 748
    :goto_0
    if-lez p1, :cond_0

    .line 749
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 751
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1

    .line 752
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 753
    .local v0, "canShowTmpTask":Z
    :goto_1
    if-nez v0, :cond_2

    .line 758
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_0
    return p1

    .line 751
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 756
    .restart local v0    # "canShowTmpTask":Z
    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0
.end method

.method private computeMinPosition(II)I
    .locals 4
    .param p1, "minPosition"    # I
    .param p2, "size"    # I

    .prologue
    .line 729
    :goto_0
    if-ge p1, p2, :cond_0

    .line 730
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 732
    .local v1, "tmpTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v2

    if-nez v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 734
    .local v0, "canShowTmpTask":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 739
    .end local v0    # "canShowTmpTask":Z
    .end local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_0
    return p1

    .line 732
    .restart local v1    # "tmpTask":Lcom/android/server/wm/Task;
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 737
    .restart local v0    # "canShowTmpTask":Z
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1609
    if-ne p2, v3, :cond_1

    .line 1611
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 1612
    return v4

    .line 1614
    :cond_0
    const/4 v0, 0x4

    return v0

    .line 1616
    :cond_1
    if-ne p2, v4, :cond_3

    .line 1618
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 1619
    return v3

    .line 1621
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 1624
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method private getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V
    .locals 11
    .param p1, "displayRect"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "stackId"    # I
    .param p4, "dockedBounds"    # Landroid/graphics/Rect;
    .param p5, "dockDividerWidth"    # I
    .param p6, "dockOnTopOrLeft"    # Z

    .prologue
    .line 898
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v8, 0x1

    .line 899
    .local v8, "dockedStack":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v10, 0x1

    .line 901
    .local v10, "splitHorizontally":Z
    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 902
    if-eqz v8, :cond_7

    .line 903
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 905
    return-void

    .line 898
    .end local v8    # "dockedStack":Z
    .end local v10    # "splitHorizontally":Z
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "dockedStack":Z
    goto :goto_0

    .line 899
    :cond_1
    const/4 v10, 0x0

    .restart local v10    # "splitHorizontally":Z
    goto :goto_1

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v7

    .line 912
    .local v7, "di":Landroid/view/DisplayInfo;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/view/DisplayInfo;->rotation:I

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 913
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 912
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 914
    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 915
    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 916
    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 918
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/4 v5, 0x1

    .line 919
    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    move/from16 v4, p5

    .line 914
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget v9, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 921
    .local v9, "position":I
    if-eqz p6, :cond_5

    .line 922
    if-eqz v10, :cond_4

    .line 923
    iput v9, p2, Landroid/graphics/Rect;->right:I

    .line 934
    :goto_3
    return-void

    .line 918
    .end local v9    # "position":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 925
    .restart local v9    # "position":I
    :cond_4
    iput v9, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 928
    :cond_5
    if-eqz v10, :cond_6

    .line 929
    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 931
    :cond_6
    add-int v0, v9, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 938
    .end local v7    # "di":Landroid/view/DisplayInfo;
    .end local v9    # "position":I
    :cond_7
    if-nez p6, :cond_9

    .line 939
    if-eqz v10, :cond_8

    .line 940
    iget v0, p4, Landroid/graphics/Rect;->left:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 951
    :goto_4
    if-eqz p6, :cond_b

    const/4 v0, 0x0

    :goto_5
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 897
    return-void

    .line 942
    :cond_8
    iget v0, p4, Landroid/graphics/Rect;->top:I

    sub-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    .line 945
    :cond_9
    if-eqz v10, :cond_a

    .line 946
    iget v0, p4, Landroid/graphics/Rect;->right:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_4

    .line 948
    :cond_a
    iget v0, p4, Landroid/graphics/Rect;->bottom:I

    add-int v0, v0, p5

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_4

    .line 951
    :cond_b
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    .line 590
    .local v0, "dockSide":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->isDockSideAllowed(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    return-void

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 594
    invoke-static {v0}, Lcom/android/internal/policy/DockedDividerUtils;->invertDockSide(I)I

    move-result v0

    .line 595
    packed-switch v0, :pswitch_data_0

    .line 588
    :goto_0
    return-void

    .line 597
    :pswitch_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 598
    .local v1, "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 599
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 602
    .end local v1    # "movement":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v3

    .line 603
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 604
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 607
    .end local v1    # "movement":I
    :pswitch_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 608
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 609
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 612
    .end local v1    # "movement":I
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    .line 613
    .restart local v1    # "movement":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 614
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setAdjustedBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAnimatingForIme()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 273
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 274
    .local v0, "adjusted":Z
    :goto_0
    const/4 v1, 0x0

    .line 275
    .local v1, "insetBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 284
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskStack;->alignTasksToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 285
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 267
    return-void

    .line 269
    .end local v0    # "adjusted":Z
    :cond_2
    return-void

    :cond_3
    move v0, v3

    .line 273
    goto :goto_0

    .line 277
    .restart local v0    # "adjusted":Z
    .restart local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_4
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_1

    .line 278
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v2, :cond_5

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 281
    .local v1, "insetBounds":Landroid/graphics/Rect;
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .local v1, "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    .line 284
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method private setBounds(Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 359
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 360
    .local v1, "oldFullscreen":Z
    const/4 v2, 0x0

    .line 361
    .local v2, "rotation":I
    const/4 v0, 0x0

    .line 362
    .local v0, "density":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 364
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 365
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 366
    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 367
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v3, :cond_0

    .line 368
    iget-object p1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 372
    :cond_0
    if-nez p1, :cond_2

    .line 374
    return v5

    :cond_1
    move v3, v5

    .line 366
    goto :goto_0

    .line 376
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v1, v3, :cond_3

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v2, :cond_3

    .line 377
    return v5

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_5

    .line 381
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mPrevDisplayWidth:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mPrevDisplayHeight:I

    if-nez v3, :cond_4

    .line 382
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 384
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 387
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 388
    iput v2, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    .line 389
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    .line 393
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v3}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 396
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 397
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 405
    :cond_7
    :goto_2
    return v4

    .line 394
    :cond_8
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v3, p1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 398
    :cond_9
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-interface {v3, v5}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setSurfacePosition(Landroid/graphics/Rect;)V

    goto :goto_2
.end method

.method private snapDockedStackAfterRotation(Landroid/graphics/Rect;)V
    .locals 19
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    .line 626
    .local v13, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    .line 628
    .local v6, "dividerSize":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v15

    .line 629
    .local v15, "dockSide":I
    move-object/from16 v0, p1

    invoke-static {v0, v15, v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v14

    .line 631
    .local v14, "dividerPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 632
    .local v4, "displayWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v5, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 635
    .local v5, "displayHeight":I
    iget v0, v13, Landroid/view/DisplayInfo;->rotation:I

    move/from16 v17, v0

    .line 636
    .local v17, "rotation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    .line 637
    .local v16, "orientation":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v3, v0, v4, v5, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 638
    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 639
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 640
    const/4 v7, 0x1

    move/from16 v0, v16

    if-ne v0, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v8, p1

    .line 638
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    .line 641
    .local v2, "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    invoke-virtual {v2, v14}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v18

    .line 645
    .local v18, "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->LONG_DEVICE_SNAP_MODE_SUPPORT:Z

    .line 644
    if-eqz v3, :cond_1

    move v7, v14

    .line 646
    :goto_1
    iget v10, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v11, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    move v8, v15

    move-object/from16 v9, p1

    move v12, v6

    .line 644
    invoke-static/range {v7 .. v12}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 622
    return-void

    .line 640
    .end local v2    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .end local v18    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 645
    .restart local v2    # "algorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    .restart local v18    # "target":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :cond_1
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    goto :goto_1
.end method

.method private updateAdjustedBounds()V
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds(Z)V

    .line 1411
    return-void
.end method

.method private updateBoundsAfterConfigChange()Z
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 488
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v8, :cond_0

    .line 491
    return v6

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    .line 494
    .local v2, "newRotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v0, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 496
    .local v0, "newDensity":I
    iget v8, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v8, v2, :cond_1

    iget v8, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v8, v0, :cond_1

    .line 502
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isOrientationChanging()Z

    move-result v8

    if-nez v8, :cond_1

    .line 503
    return v6

    .line 511
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v8, :cond_2

    .line 513
    invoke-direct {p0, v11}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 515
    return v6

    .line 520
    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v8

    if-ne v8, v13, :cond_3

    .line 522
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 523
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v8, v11, v6}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    .line 524
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->prevRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 525
    iput-boolean v6, p0, Lcom/android/server/wm/TaskStack;->ensureToken:Z

    .line 532
    :cond_3
    iput v0, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    .line 534
    iget v8, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v8, v12, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v3

    .line 537
    .local v3, "oldDockSide":I
    :goto_0
    const/4 v5, 0x0

    .line 538
    .local v5, "updateRealBoundsForSnapWindow":Z
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v8, :cond_4

    .line 539
    iget v8, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v8, v12, :cond_4

    .line 540
    iget-boolean v8, p0, Lcom/android/server/wm/TaskStack;->mAdjBoundsForSnapWindow:Z

    .line 538
    if-eqz v8, :cond_4

    .line 541
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mSnapViewRunning:Z

    if-eqz v8, :cond_8

    .line 545
    :cond_4
    :goto_1
    if-eqz v5, :cond_9

    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 546
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 547
    .local v4, "t":Lcom/android/server/wm/Task;
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 548
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_5

    .line 549
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 556
    .end local v4    # "t":Lcom/android/server/wm/Task;
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    iget-object v10, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v2, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 557
    iget v8, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v8, v12, :cond_6

    if-eqz v5, :cond_a

    .line 573
    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 574
    return v7

    .line 534
    .end local v3    # "oldDockSide":I
    .end local v5    # "updateRealBoundsForSnapWindow":Z
    :cond_7
    const/4 v3, -0x1

    .restart local v3    # "oldDockSide":I
    goto :goto_0

    .line 542
    .restart local v5    # "updateRealBoundsForSnapWindow":Z
    :cond_8
    const/4 v5, 0x1

    .line 543
    iput-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mAdjBoundsForSnapWindow:Z

    goto :goto_1

    .line 553
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 558
    :cond_a
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v8}, Lcom/android/server/wm/TaskStack;->repositionDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 559
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v8}, Lcom/android/server/wm/TaskStack;->snapDockedStackAfterRotation(Landroid/graphics/Rect;)V

    .line 560
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v1

    .line 561
    .local v1, "newDockSide":I
    if-eq v3, v1, :cond_6

    .line 564
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 565
    if-eq v1, v7, :cond_b

    if-ne v1, v13, :cond_c

    .line 564
    :cond_b
    :goto_4
    invoke-virtual {v8, v6, v11}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateStateLocked(ILandroid/graphics/Rect;)V

    .line 569
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockSideChanged(I)V

    goto :goto_3

    :cond_c
    move v6, v7

    .line 567
    goto :goto_4
.end method

.method private useCurrentBounds()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-nez v0, :cond_0

    .line 419
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;ZZ)V

    .line 666
    return-void
.end method

.method addTask(Lcom/android/server/wm/Task;ZZ)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z
    .param p3, "showForAllUsers"    # Z

    .prologue
    .line 677
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/TaskStack;->positionTask(Lcom/android/server/wm/Task;IZ)V

    .line 676
    return-void

    .line 677
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 1463
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1464
    :cond_0
    return-void

    .line 1468
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1469
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v4

    .line 1468
    if-eqz v4, :cond_2

    .line 1470
    return-void

    .line 1474
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 1476
    .local v0, "insetBounds":Landroid/graphics/Rect;
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1477
    .local v1, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1479
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_4

    .line 1483
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1487
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1462
    return-void

    .line 1474
    .end local v0    # "insetBounds":Landroid/graphics/Rect;
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mFullyAdjustedImeBounds:Landroid/graphics/Rect;

    .restart local v0    # "insetBounds":Landroid/graphics/Rect;
    goto :goto_0

    .line 1485
    .restart local v1    # "taskBounds":Landroid/graphics/Rect;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {p1, v4, v0, v2}, Lcom/android/server/wm/Task;->alignToAdjustedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    goto :goto_1
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 9
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v8, 0x3

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 808
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animation background stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 808
    invoke-direct {v0, v1, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 814
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v8, :cond_1

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/wm/TaskStack;->mFullMinimizedHeight:I

    .line 823
    :cond_1
    const/4 v2, 0x0

    .line 824
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskStack;

    .line 825
    .local v7, "dockedStack":Lcom/android/server/wm/TaskStack;
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v8, :cond_3

    .line 826
    if-eqz v7, :cond_2

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    .end local v2    # "bounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    .line 802
    return-void

    .line 832
    .restart local v2    # "bounds":Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    .end local v2    # "bounds":Landroid/graphics/Rect;
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 833
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 835
    if-eqz v7, :cond_4

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateMode:I

    if-nez v0, :cond_5

    const/4 v6, 0x1

    .line 840
    .local v6, "dockedOnTopOrLeft":Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    .line 840
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    goto :goto_0

    .line 838
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_1
.end method

.method beginImeAdjustAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1149
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1150
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1151
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisibleForUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1152
    invoke-virtual {v1, v3, v3}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1153
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->addWindowsWaitingForDrawnIfResizingChanged()V

    .line 1149
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1148
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void
.end method

.method close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 1021
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->destroySurface()V

    .line 1028
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    .line 1032
    :cond_1
    iput-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1018
    return-void
.end method

.method detachDisplay()V
    .locals 8

    .prologue
    .line 968
    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/16 v7, 0x791e

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 970
    const/4 v3, 0x0

    .line 971
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 972
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 973
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    .line 974
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 975
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 978
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 979
    const/4 v3, 0x1

    .line 975
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 973
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 971
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 983
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    .line 984
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 987
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->close()V

    .line 967
    return-void
.end method

.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 1548
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mStackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mDeferDetach="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mFullscreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 1500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMinimizeAmout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v3, :cond_1

    .line 1503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedForIme=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustImeAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustDividerAmount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mAdjustedBounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1510
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_3

    .line 1511
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1510
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1513
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1519
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v3}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mStackColorLayerSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1525
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1526
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1527
    const-string/jumbo v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 1529
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 1530
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string/jumbo v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1531
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1532
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 1533
    const-string/jumbo v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1528
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1494
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    return-void
.end method

.method endImeAdjustAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1162
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 1162
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1161
    :cond_0
    return-void
.end method

.method findHomeTask()Lcom/android/server/wm/Task;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v1, :cond_0

    .line 180
    return-object v2

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    return-object v1

    .line 183
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 188
    :cond_2
    return-object v2
.end method

.method forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "force"    # Z

    .prologue
    .line 1737
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1739
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1740
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1741
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1742
    .local v4, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_1
    if-ltz v3, :cond_1

    .line 1743
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v2, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1744
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1747
    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, p2}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1740
    .end local v2    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1751
    .end local v3    # "winNdx":I
    .end local v4    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1736
    return-void

    .line 1750
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :catchall_0
    move-exception v5

    .line 1751
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1750
    throw v5
.end method

.method public getAdjustImeAmount()F
    .locals 1

    .prologue
    .line 1831
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 427
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getBoundsAnimating()Z
    .locals 1

    .prologue
    .line 1800
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAfterRotation:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 577
    return-void
.end method

.method public getColorLayerSurface()Lcom/android/server/wm/IMultiWindowStackColorLayer;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    return-object v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 453
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDockSide()I
    .locals 1

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getDockSide(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;)I
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, -0x1

    .line 1597
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1600
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_2

    .line 1601
    return v3

    .line 1598
    :cond_1
    return v3

    .line 1603
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1604
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1605
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, v1, v0}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    return v1
.end method

.method public getForceScaleToCrop()Z
    .locals 1

    .prologue
    .line 1796
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    return v0
.end method

.method public getFullScreenBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getContentRect(Landroid/graphics/Rect;)V

    .line 1787
    return-void
.end method

.method getMinTopStackBottom(Landroid/graphics/Rect;I)I
    .locals 3
    .param p1, "displayContentRect"    # Landroid/graphics/Rect;
    .param p2, "originalStackBottom"    # I

    .prologue
    .line 1168
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 1169
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    .line 1168
    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMinimizeDistance()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 1393
    .local v0, "dockSide":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1394
    return v3

    .line 1397
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1398
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(Landroid/graphics/Rect;)V

    .line 1399
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 1400
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    return v2

    .line 1401
    .end local v1    # "topInset":I
    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1402
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDockedStackMinimizeThickness:I

    sub-int/2addr v2, v3

    return v2

    .line 1404
    :cond_3
    return v3
.end method

.method getRawBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 412
    return-void
.end method

.method getRawFullscreen()Z
    .locals 1

    .prologue
    .line 1543
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    .prologue
    const/4 v1, 0x3

    .line 849
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_2

    .line 851
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 852
    return-void

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    .line 856
    .local v8, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-nez v8, :cond_3

    .line 858
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 859
    const-string/jumbo v1, "Calling getStackDockedModeBoundsLocked() when there is no docked stack."

    .line 858
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 869
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    .line 870
    .local v7, "dockedSide":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_6

    .line 872
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to get valid docked side for docked stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 874
    return-void

    .line 865
    .end local v7    # "dockedSide":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 866
    return-void

    .line 877
    .restart local v7    # "dockedSide":I
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 878
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 879
    const/4 v0, 0x2

    if-eq v7, v0, :cond_7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_8

    :cond_7
    const/4 v6, 0x1

    .line 880
    .local v6, "dockedOnTopOrLeft":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 881
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v5

    move-object v0, p0

    move-object v2, p1

    .line 880
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Rect;IZ)V

    .line 848
    return-void

    .line 879
    .end local v6    # "dockedOnTopOrLeft":Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "dockedOnTopOrLeft":Z
    goto :goto_0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasMovementAnimations()Z
    .locals 1

    .prologue
    .line 1792
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasMovementAnimations(I)Z

    move-result v0

    return v0
.end method

.method isAdjustedForIme()Z
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    return v0
.end method

.method isAdjustedForMinimizedDock()Z
    .locals 2

    .prologue
    .line 1141
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdjustedForMinimizedDockedStack()Z
    .locals 2

    .prologue
    .line 1491
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimating()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 651
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 652
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 653
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 654
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 655
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 656
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 657
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v6, :cond_1

    .line 658
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 655
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 653
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 651
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 663
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return v7
.end method

.method isAnimatingForIme()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDragResizing()Z
    .locals 1

    .prologue
    .line 1690
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    return v0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 1552
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->useCurrentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0

    .line 1558
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isFullscreenBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleForUserLocked()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1680
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1681
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 1682
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isVisibleForUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    const/4 v2, 0x1

    return v2

    .line 1680
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1686
    .end local v1    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return v3
.end method

.method isVisibleLocked()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1629
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1630
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    if-eqz v5, :cond_2

    move v2, v6

    .line 1631
    .local v2, "keyguardOn":Z
    :goto_0
    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v5}, Landroid/app/ActivityManager$StackId;->isAllowedOverLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1644
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_9

    .line 1645
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1646
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_8

    .line 1647
    iget-object v5, v3, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v5, :cond_7

    .line 1650
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v5, :cond_1

    .line 1651
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v5}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1660
    :cond_1
    :goto_3
    return v7

    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "keyguardOn":Z
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_2
    move v2, v7

    .line 1630
    goto :goto_0

    :cond_3
    move v2, v6

    .line 1629
    goto :goto_0

    .line 1634
    .restart local v2    # "keyguardOn":Z
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v5, :cond_5

    .line 1635
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v5}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->hide()V

    .line 1636
    iput-boolean v7, p0, Lcom/android/server/wm/TaskStack;->mHideColorLayerByKeyguard:Z

    .line 1641
    :cond_5
    return v6

    .line 1651
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_6
    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mHideColorLayerByKeyguard:Z

    .line 1650
    if-eqz v5, :cond_1

    .line 1652
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1653
    .local v4, "tmpRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 1654
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v5, v4}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setSurfacePosition(Landroid/graphics/Rect;)V

    .line 1655
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    invoke-interface {v5, v8, v10, v11}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->show(FJ)V

    .line 1656
    iput-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mHideColorLayerByKeyguard:Z

    goto :goto_3

    .line 1646
    .end local v4    # "tmpRect":Landroid/graphics/Rect;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1644
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1667
    .end local v1    # "j":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v5}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDock()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1672
    :cond_a
    :goto_4
    return v6

    .line 1668
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v5}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->hide()V

    goto :goto_4
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 769
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 768
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 762
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToTop: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 763
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 762
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 765
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 761
    return-void
.end method

.method public moveToFullscreen()V
    .locals 4

    .prologue
    .line 1780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    return-void

    .line 1781
    :catch_0
    move-exception v0

    .line 1782
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationEnd()V
    .locals 3

    .prologue
    .line 1764
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1765
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z

    .line 1766
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1768
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1770
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->notifyPinnedStackAnimationEnded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1764
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1771
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 2

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1758
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mBoundsAnimating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1756
    return-void

    .line 1757
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onConfigurationChanged()Z
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v0

    return v0
.end method

.method positionTask(Lcom/android/server/wm/Task;IZ)V
    .locals 10
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I
    .param p3, "showForAllUsers"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 682
    if-nez p3, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    .line 683
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 684
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 685
    .local v3, "stackSize":I
    const/4 v2, 0x0

    .line 686
    .local v2, "minPosition":I
    move v1, v3

    .line 688
    .local v1, "maxPosition":I
    if-eqz v0, :cond_5

    .line 689
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->computeMinPosition(II)I

    move-result v2

    .line 694
    :goto_1
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 696
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "WindowManager"

    .line 697
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "positionTask: task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " position="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 696
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 701
    iget-object v7, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eq v7, p0, :cond_1

    .line 702
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->resetScrollLocked()V

    .line 704
    :cond_1
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 705
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 706
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p2, v7, :cond_6

    move v4, v6

    .line 707
    .local v4, "toTop":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 708
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, p0, v6}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 711
    :cond_2
    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->windowsAreScaleable(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 715
    invoke-virtual {p0, p1, v6}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    .line 719
    :goto_3
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v7, v6

    const/16 v5, 0x791a

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 680
    return-void

    .line 682
    .end local v1    # "maxPosition":I
    .end local v2    # "minPosition":I
    .end local v3    # "stackSize":I
    .end local v4    # "toTop":Z
    :cond_4
    const/4 v0, 0x1

    .local v0, "canShowTask":Z
    goto/16 :goto_0

    .line 691
    .end local v0    # "canShowTask":Z
    .restart local v1    # "maxPosition":I
    .restart local v2    # "minPosition":I
    .restart local v3    # "stackSize":I
    :cond_5
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeMaxPosition(I)I

    move-result v1

    goto/16 :goto_1

    :cond_6
    move v4, v5

    .line 706
    goto :goto_2

    .line 717
    .restart local v4    # "toTop":Z
    :cond_7
    invoke-virtual {p0, p1, v5}, Lcom/android/server/wm/TaskStack;->forceWindowsScaleable(Lcom/android/server/wm/Task;Z)V

    goto :goto_3
.end method

.method prepareFreezingTaskBounds()V
    .locals 3

    .prologue
    .line 247
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 248
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 249
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->prepareFreezingBounds()V

    .line 247
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 246
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    const/4 v5, 0x0

    .line 780
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 782
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_3

    .line 783
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_1

    .line 786
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-interface {v2, v3}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->removeStackAdjustedForIme(I)V

    .line 789
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v5}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 791
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 793
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "appNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 794
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 795
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_4

    .line 796
    iput-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 797
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTokenList;->remove(I)Ljava/lang/Object;

    .line 793
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 779
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_5
    return-void
.end method

.method resetAdjustedForIme(Z)V
    .locals 4
    .param p1, "adjustBoundsNow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1104
    if-eqz p1, :cond_0

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1106
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1107
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1108
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1109
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1110
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    .line 1115
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->removeStackAdjustedForIme(I)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 1103
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    goto :goto_0
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 992
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 990
    return-void
.end method

.method resetDockedStackToMiddle()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 955
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v1, v4, :cond_0

    .line 956
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not a docked stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mDockedStackCreateBounds:Landroid/graphics/Rect;

    .line 961
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 962
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/graphics/Rect;Z)V

    .line 963
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 954
    return-void
.end method

.method setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "forceUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1041
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    .line 1042
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mImeGoingAway:Z

    .line 1043
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 1046
    :cond_0
    const/4 v1, 0x0

    .line 1047
    .local v1, "lastImeAmount":F
    const/4 v0, 0x0

    .line 1048
    .local v0, "lastDivAmount":F
    iget-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v2, :cond_2

    .line 1049
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1050
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1055
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->setResizing(Z)V

    .line 1057
    invoke-virtual {p0, v1, v0, v3}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    .line 1058
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-interface {v2, v3, p0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->addStackAdjustedForIme(ILcom/android/server/wm/TaskStack;)V

    .line 1040
    .end local v0    # "lastDivAmount":F
    .end local v1    # "lastImeAmount":F
    :cond_1
    return-void

    .line 1052
    .restart local v0    # "lastDivAmount":F
    .restart local v1    # "lastImeAmount":F
    :cond_2
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1053
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    goto :goto_0
.end method

.method setAdjustedForMinimizedDock(F)Z
    .locals 1
    .param p1, "minimizeAmount"    # F

    .prologue
    .line 1131
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1132
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    .line 1133
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisibleForUserLocked()Z

    move-result v0

    return v0

    .line 1136
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 996
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 997
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    .line 998
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 999
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1000
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 1001
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    .line 1002
    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    .line 1001
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 995
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 10
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/Configuration;>;"
    .local p3, "taskBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    .local p4, "taskTempInsetBounds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 204
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_8

    .line 205
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 206
    .local v2, "task":Lcom/android/server/wm/Task;
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 207
    .local v1, "config":Landroid/content/res/Configuration;
    if-eqz v1, :cond_7

    .line 208
    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 210
    .local v0, "bounds":Landroid/graphics/Rect;
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_VIEW_SUPPORT:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isSnapViewing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 212
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 213
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    .line 204
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 216
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isTwoFingerScrollMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 223
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 224
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->scrollLocked(Landroid/graphics/Rect;)Z

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {v2, v0, v1, v8}, Lcom/android/server/wm/Task;->resizeLocked(Landroid/graphics/Rect;Landroid/content/res/Configuration;Z)Z

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isAutoResizingEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eq v4, v9, :cond_2

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 230
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    .line 231
    :cond_3
    invoke-virtual {v2, v5}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 230
    :cond_4
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-eqz v4, :cond_3

    .line 235
    :cond_5
    if-eqz p4, :cond_6

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 234
    :goto_2
    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setTempInsetBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_6
    move-object v4, v5

    .line 236
    goto :goto_2

    .line 240
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_7
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No config for task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", is there a mismatch with AM?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v1    # "config":Landroid/content/res/Configuration;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_8
    return v9
.end method

.method setDragResizingLocked(Z)V
    .locals 2
    .param p1, "resizing"    # Z

    .prologue
    .line 1694
    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    if-ne v1, p1, :cond_0

    .line 1695
    return-void

    .line 1697
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskStack;->mDragResizing:Z

    .line 1698
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1699
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 1698
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1693
    :cond_1
    return-void
.end method

.method public setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 1718
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v2

    .line 1720
    return v4

    .line 1722
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    .line 1723
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v3, "Attempt to use pinned stack resize animation helper onnon pinned stack"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1725
    return v4

    :cond_1
    monitor-exit v2

    .line 1729
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1733
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1718
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1730
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setSize(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1706
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    .line 1707
    return v2

    :cond_0
    monitor-exit v0

    .line 1711
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1714
    :goto_0
    return v8

    .line 1705
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1712
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method switchUser()V
    .locals 5

    .prologue
    .line 1007
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1008
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1009
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1010
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1011
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1012
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v2, v2, -0x1

    .line 1008
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1006
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateAdjustForIme(FFZ)Z
    .locals 1
    .param p1, "adjustAmount"    # F
    .param p2, "adjustDividerAmount"    # F
    .param p3, "force"    # Z

    .prologue
    .line 1086
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1087
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 1088
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    .line 1089
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    .line 1090
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->updateAdjustedBounds()V

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isVisibleForUserLocked()Z

    move-result v0

    return v0

    .line 1086
    :cond_1
    if-nez p3, :cond_0

    .line 1093
    const/4 v0, 0x0

    return v0
.end method

.method updateAdjustedBounds(Z)V
    .locals 8
    .param p1, "adjustAllTask"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1418
    const/4 v0, 0x0

    .line 1419
    .local v0, "adjust":Z
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 1420
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mMinimizeAmount:F

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->adjustForMinimizedDockedStack(F)Z

    move-result v0

    .line 1424
    .end local v0    # "adjust":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1425
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1428
    :cond_1
    if-eqz p1, :cond_2

    .line 1430
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mTmpAdjustedBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedBounds(Landroid/graphics/Rect;)V

    .line 1434
    :cond_2
    const/4 v2, 0x0

    .line 1436
    .local v2, "ensureTarget":Z
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1437
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_3

    .line 1438
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1439
    const/4 v2, 0x1

    .line 1444
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-ne v4, p0, :cond_6

    const/4 v3, 0x1

    .line 1445
    .local v3, "isImeTarget":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    if-eqz v3, :cond_7

    .line 1416
    :cond_4
    :goto_2
    return-void

    .line 1421
    .end local v2    # "ensureTarget":Z
    .end local v3    # "isImeTarget":Z
    .restart local v0    # "adjust":Z
    :cond_5
    iget-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustedForIme:Z

    if-eqz v4, :cond_0

    .line 1422
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mImeWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->adjustForIME(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .local v0, "adjust":Z
    goto :goto_0

    .line 1444
    .end local v0    # "adjust":Z
    .restart local v2    # "ensureTarget":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "isImeTarget":Z
    goto :goto_1

    .line 1447
    :cond_7
    if-nez v2, :cond_4

    .line 1449
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v4}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->isSupportEnsureDockedView()Z

    move-result v4

    .line 1448
    if-eqz v4, :cond_8

    .line 1450
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_8

    .line 1451
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    if-ne v4, p0, :cond_8

    .line 1452
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2

    .line 1455
    :cond_8
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mAdjustImeAmount:F

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mAdjustDividerAmount:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1456
    const/high16 v5, 0x3e800000    # 0.25f

    .line 1455
    mul-float v1, v4, v5

    .line 1457
    .local v1, "alpha":F
    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v4, v6, v5, v1}, Lcom/android/server/wm/WindowManagerService;->setResizeDimLayer(ZIF)V

    goto :goto_2
.end method

.method public updateColorLayerSurface()V
    .locals 4

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    if-eqz v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->shouldUpdateSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    invoke-interface {v1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->getTargetAlpha()F

    move-result v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->show(FJ)V

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1824
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackColorLayer:Lcom/android/server/wm/IMultiWindowStackColorLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAdjustedBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/android/server/wm/IMultiWindowStackColorLayer;->setSurfacePosition(Landroid/graphics/Rect;)V

    .line 1817
    :cond_1
    return-void
.end method

.method updateDisplayInfo(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    .line 458
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v3, :cond_0

    .line 459
    return-void

    .line 462
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 463
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->updateDisplayInfo(Lcom/android/server/wm/DisplayContent;)V

    .line 462
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 465
    :cond_1
    if-eqz p1, :cond_2

    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 467
    return-void

    .line 468
    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v3, :cond_3

    .line 469
    invoke-direct {p0, v5}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 470
    return-void

    .line 473
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 474
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 475
    .local v1, "newRotation":I
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v0, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 476
    .local v0, "newDensity":I
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mRotation:I

    if-ne v3, v1, :cond_4

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mDensity:I

    if-ne v3, v0, :cond_4

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 457
    :cond_4
    return-void
.end method
