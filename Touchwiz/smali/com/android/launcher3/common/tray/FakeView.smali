.class public Lcom/android/launcher3/common/tray/FakeView;
.super Landroid/widget/FrameLayout;
.source "FakeView.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
    }
.end annotation


# static fields
.field private static final MOVE_STAGE_DELAY:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Tray.FakeView"


# instance fields
.field private mAnimationDuration:I

.field private final mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private final mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mDescAnim:Landroid/view/ViewPropertyAnimator;

.field private mDescText:Landroid/widget/TextView;

.field private mDirection:I

.field private mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

.field private mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

.field private mDropView:Landroid/view/View;

.field private mIsDragEntered:Z

.field private mIsDropEnabled:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mSuppressChangeStage:Z

.field private mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/tray/FakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/tray/FakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 67
    new-instance v0, Lcom/android/launcher3/common/tray/FakeView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/tray/FakeView$1;-><init>(Lcom/android/launcher3/common/tray/FakeView;)V

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    .line 85
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/tray/FakeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/tray/FakeView;)Lcom/android/launcher3/util/alarm/OnAlarmListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/tray/FakeView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    return-object v0
.end method

.method private getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    return-object v0
.end method

.method private showDescription(ZI)V
    .locals 4
    .param p1, "toBeShown"    # Z
    .param p2, "animDuration"    # I

    .prologue
    .line 129
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    .local v0, "finalAlpha":F
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescAnim:Landroid/view/ViewPropertyAnimator;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 135
    :cond_0
    if-lez p2, :cond_3

    .line 136
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescAnim:Landroid/view/ViewPropertyAnimator;

    .line 137
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescAnim:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 129
    .end local v0    # "finalAlpha":F
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    .restart local v0    # "finalAlpha":F
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method public getOutlineColor()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    .prologue
    .line 267
    return-object p0
.end method

.method public isDragEntered()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDragEntered:Z

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1
    .param p1, "isDrop"    # Z

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/FakeView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 100
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 224
    const-string v0, "Tray.FakeView"

    const-string v1, "onDragEnter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDragEntered:Z

    .line 227
    iget-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 234
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onDragEnter(I)V

    goto :goto_0
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "dropTargetChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 249
    const-string v0, "Tray.FakeView"

    const-string v1, "onDragExit"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 251
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDragEntered:Z

    .line 252
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 253
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    iget v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;->onDragExit(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 245
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 24
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 168
    const-string v2, "Tray.FakeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDrop "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 171
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/tray/FakeView;->getDropTarget()Lcom/android/launcher3/common/drag/DropTarget;

    move-result-object v20

    .line 172
    .local v20, "dropTarget":Lcom/android/launcher3/common/drag/DropTarget;
    if-eqz v20, :cond_0

    .line 173
    new-instance v19, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;-><init>()V

    .line 174
    .local v19, "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    .line 175
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    .line 176
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    .line 178
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    .line 181
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;

    if-eqz v2, :cond_1

    move-object/from16 v23, v20

    .line 182
    check-cast v23, Lcom/android/launcher3/home/WorkspaceDragController;

    .line 183
    .local v23, "workspaceDragController":Lcom/android/launcher3/home/WorkspaceDragController;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    .line 191
    .end local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v23    # "workspaceDragController":Lcom/android/launcher3/home/WorkspaceDragController;
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 192
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 193
    .local v4, "finalPos":[I
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 194
    .local v22, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 195
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->left:I

    aput v3, v4, v2

    .line 196
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iget v3, v0, Landroid/graphics/Rect;->top:I

    aput v3, v4, v2

    .line 197
    const/high16 v5, 0x3f000000    # 0.5f

    .line 198
    .local v5, "alpha":F
    const v6, 0x3e99999a    # 0.3f

    .line 199
    .local v6, "scaleX":F
    const v7, 0x3e99999a    # 0.3f

    .line 200
    .local v7, "scaleY":F
    new-instance v9, Lcom/android/launcher3/common/tray/FakeView$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/launcher3/common/tray/FakeView$2;-><init>(Lcom/android/launcher3/common/tray/FakeView;)V

    .line 206
    .local v9, "onFinishAnimationRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v8, 0x0

    const/16 v10, 0x1e0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 210
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 211
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 212
    .local v21, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/common/tray/FakeView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v10

    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1e0

    move-object v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v10 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_1

    .line 185
    .end local v4    # "finalPos":[I
    .end local v5    # "alpha":F
    .end local v6    # "scaleX":F
    .end local v7    # "scaleY":F
    .end local v9    # "onFinishAnimationRunnable":Ljava/lang/Runnable;
    .end local v21    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v22    # "r":Landroid/graphics/Rect;
    .restart local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 186
    const/4 v2, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/common/drag/DropTarget;->onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    .line 187
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/drag/DropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_0

    .line 218
    .end local v19    # "d":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 220
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 91
    const v0, 0x7f1100f5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/tray/FakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropView:Landroid/view/View;

    .line 92
    const v0, 0x7f1100f6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/tray/FakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/common/tray/FakeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mAnimationDuration:I

    .line 94
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 287
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 288
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDragEntered:Z

    .line 289
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 290
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 295
    :cond_1
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setDescriptionHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 123
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDirection:I

    .line 104
    return-void
.end method

.method public setDragEventListener(Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mDragEventCallback:Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;

    .line 148
    return-void
.end method

.method public setSuppressChangeStage(Z)V
    .locals 3
    .param p1, "suppress"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mChangeStageAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    .line 300
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mIsDropEnabled:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 302
    invoke-direct {p0, v1, v1}, Lcom/android/launcher3/common/tray/FakeView;->showDescription(ZI)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/common/tray/FakeView;->mSuppressChangeStage:Z

    .line 305
    iget v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mAnimationDuration:I

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/common/tray/FakeView;->showDescription(ZI)V

    goto :goto_0
.end method

.method public setTrayLevel(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)V
    .locals 1
    .param p1, "level"    # Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/launcher3/common/tray/FakeView;->mTrayLevel:Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/tray/FakeView;->setTag(Ljava/lang/Object;)V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/tray/FakeView;->mDropTarget:Lcom/android/launcher3/common/drag/DropTarget;

    .line 110
    return-void
.end method
