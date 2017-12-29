.class public Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;
.super Ljava/lang/Object;
.source "MultiWindowPointerEventListenerImpl.java"

# interfaces
.implements Lcom/android/server/wm/IMultiWindowManagerInternalBridge$IMultiWindowPointerEventListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final MINIMAL_SIZE_UNDEFINED:I = -0x1

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiWindowGesture"

.field private static final TASK_ID_UNDEFINED:I = -0x1

.field private static final TOAST_UNRESIZABLE_TASK:I = 0x1


# instance fields
.field private mDefaultMinimalSizeOfResizeableTask:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

.field private final mInitRect:Landroid/graphics/Rect;

.field private mIsMoved:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mNotResizeableRect:Landroid/graphics/Rect;

.field private mNotSupport:Z

.field private mPersona:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskId:I

.field private mTaskResizable:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    iput-object p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 97
    return-void
.end method

.method private findTargetTaskBounds(IILandroid/graphics/Rect;)Z
    .locals 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 134
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 135
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 136
    const-string v9, "MultiWindowGesture"

    const-string v11, "findTargetTaskBounds: the keyguard is currently locked."

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 138
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 139
    const-string v9, "MultiWindowGesture"

    const-string v11, "findTargetTaskBounds: the quick panel is expanded."

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 142
    :cond_1
    :try_start_2
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v9, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 143
    .local v2, "focusedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_3

    .line 144
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v8, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 145
    .local v8, "windowType":I
    const/16 v9, 0x8b2

    if-ne v8, v9, :cond_2

    .line 146
    const-string v9, "MultiWindowGesture"

    const-string v11, "findTargetTaskBounds: the edge panel is expanded."

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 148
    :cond_2
    const/16 v9, 0x7e7

    if-ne v8, v9, :cond_3

    .line 149
    :try_start_3
    const-string v9, "MultiWindowGesture"

    const-string v11, "findTargetTaskBounds: The screensaver is running."

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 155
    .end local v8    # "windowType":I
    :cond_3
    :try_start_4
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/android/server/wm/DisplayContent;->taskIdFromPoint(II)I

    move-result v6

    .line 156
    .local v6, "taskId":I
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 157
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_c

    iget-object v9, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v9, :cond_c

    .line 158
    const-string v9, "MultiWindowGesture"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTargetTaskBounds: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v9, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v9, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_4

    iget-object v9, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v9, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_b

    .line 160
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    .line 161
    .local v7, "topVisibleAppToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 162
    const-string v9, "MultiWindowGesture"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTargetTaskBounds: failed, task is relaunching, t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 165
    :cond_5
    :try_start_5
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 167
    iget-object v9, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v9, v9, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_7

    const/4 v3, 0x1

    .line 168
    .local v3, "isDockedStack":Z
    :goto_0
    if-eqz v3, :cond_9

    .line 169
    iget-object v9, v5, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v9}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v9

    .line 168
    if-eqz v9, :cond_9

    .line 169
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/Rect;->top:I

    if-gez v9, :cond_8

    const/4 v4, 0x1

    .line 170
    .local v4, "isDockedTaskAdjustedForIme":Z
    :goto_1
    if-nez v4, :cond_6

    if-eqz v3, :cond_a

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isRecentsVisible()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 171
    :cond_6
    const-string v9, "MultiWindowGesture"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "findTargetTaskBounds: failed, docked task is adjusted by ime or Recents is visible, t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    const/4 v9, 0x0

    monitor-exit v10

    return v9

    .line 167
    .end local v3    # "isDockedStack":Z
    .end local v4    # "isDockedTaskAdjustedForIme":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isDockedStack":Z
    goto :goto_0

    .line 169
    :cond_8
    const/4 v4, 0x0

    goto :goto_1

    .line 168
    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 175
    .restart local v4    # "isDockedTaskAdjustedForIme":Z
    :cond_a
    :try_start_6
    iget v9, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iput v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    .line 176
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    .line 177
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v9, Lcom/android/server/wm/DisplayContent;->mContentRect:Landroid/graphics/Rect;

    .line 178
    .local v1, "contentRect":Landroid/graphics/Rect;
    iget v9, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v13, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 179
    iget v9, v5, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v11, v5, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-direct {p0, v9, v11}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->updateMinimalSize(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    const/4 v9, 0x1

    monitor-exit v10

    return v9

    .line 182
    .end local v1    # "contentRect":Landroid/graphics/Rect;
    .end local v3    # "isDockedStack":Z
    .end local v4    # "isDockedTaskAdjustedForIme":Z
    .end local v7    # "topVisibleAppToken":Lcom/android/server/wm/AppWindowToken;
    :cond_b
    :try_start_7
    const-string v9, "MultiWindowGesture"

    const-string v11, "findTargetTaskBounds: failed, task is not dock or full"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_c
    monitor-exit v10

    .line 186
    const/4 v9, 0x0

    return v9

    .line 134
    .end local v2    # "focusedWindow":Lcom/android/server/wm/WindowState;
    .end local v5    # "task":Lcom/android/server/wm/Task;
    .end local v6    # "taskId":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    .line 205
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    .line 207
    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->dismiss()V

    .line 203
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 369
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 370
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 371
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 372
    .local v1, "t":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 373
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 366
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "t":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method private updateMinimalSize(II)V
    .locals 1
    .param p1, "taskMinWidth"    # I
    .param p2, "taskMinHeight"    # I

    .prologue
    .line 190
    if-lez p1, :cond_0

    .line 191
    iput p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    .line 196
    :goto_0
    if-lez p2, :cond_1

    .line 197
    iput p2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    .line 189
    :goto_1
    return-void

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 104
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .line 106
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 108
    const v1, 0x10500c3

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    .line 111
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    .line 112
    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    iput v3, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 103
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    const v1, 0x10500c3

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    .line 127
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "MultiWindowGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, mDefaultMinimalSizeOfResizeableTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDefaultMinimalSizeOfResizeableTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 215
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_1

    .line 216
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v7, :cond_1

    .line 217
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v7, :cond_1

    .line 218
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v7, :cond_1

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 223
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 224
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 226
    .local v6, "y":I
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mSamsungPolicy:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isLockTaskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    sget-boolean v7, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->SAFE_DEBUG:Z

    if-eqz v7, :cond_0

    if-nez v0, :cond_0

    .line 228
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v7

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_0

    .line 229
    const-string v7, "MultiWindowGesture"

    const-string v8, "freeform gesture is blocked, lock task mode is running."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    return-void

    .line 219
    .end local v0    # "action":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_1
    return-void

    .line 235
    .restart local v0    # "action":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mReduceScreenRunning:Z

    if-eqz v7, :cond_4

    .line 236
    if-nez v0, :cond_3

    .line 237
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->checkEdgeFlags(Landroid/view/MotionEvent;)I

    move-result v7

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_3

    .line 238
    const-string v7, "MultiWindowGesture"

    const-string v8, "freeform gesture is blocked, reduce screen is running."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_3
    return-void

    .line 244
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_5
    :goto_0
    :pswitch_0
    return-void

    .line 246
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, p1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 247
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 248
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v1, :cond_6

    .line 250
    iget v7, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenWidth:I

    .line 251
    iget v7, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mScreenHeight:I

    .line 252
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v7, v10, v11, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotResizeableRect:Landroid/graphics/Rect;

    .line 254
    :cond_6
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->findTargetTaskBounds(IILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 255
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->initialize()V

    .line 256
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 258
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->reset()V

    goto :goto_0

    .line 265
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 266
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v3

    .line 269
    .local v3, "readyToFreeform":Z
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_8

    if-eqz v3, :cond_8

    .line 270
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEffectiveAngle(II)Z

    move-result v7

    if-nez v7, :cond_8

    .line 271
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->reset()V

    .line 272
    const-string v7, "MultiWindowGesture"

    const-string v8, "onPointerEvent: not effective angle, failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_8
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskResizable:Z

    if-nez v7, :cond_a

    .line 278
    if-eqz v3, :cond_5

    .line 279
    const-string v7, "MultiWindowGesture"

    const-string v8, "onPointerEvent: failed, task is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    .line 281
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    .line 282
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 283
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_5

    .line 284
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 285
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 287
    :cond_9
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->showToast(I)V

    .line 288
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    .line 289
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    goto/16 :goto_0

    .line 296
    :cond_a
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v7, :cond_b

    .line 297
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    .line 299
    :cond_b
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v7, :cond_d

    .line 300
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxKeyguardShown()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 301
    const-string v7, "MultiWindowGesture"

    const-string v8, "onPointerEvent: failed, KnoxKeyguard is not resizable"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    .line 303
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideWindowShapeWhenNotSupport()V

    .line 304
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotResizeableRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    .line 305
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_5

    .line 306
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 307
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 309
    :cond_c
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->showToast(I)V

    .line 310
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    .line 311
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    goto/16 :goto_0

    .line 318
    :cond_d
    if-eqz v3, :cond_11

    .line 319
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->getEdgeFlgas()I

    move-result v2

    .line 320
    .local v2, "edgeFlags":I
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v7, v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->applyResizeRect(Landroid/graphics/Rect;III)V

    .line 321
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinWidth:I

    iget v9, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMinHeight:I

    invoke-static {v7, v2, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 322
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    .line 326
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    if-nez v7, :cond_f

    .line 327
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 328
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 330
    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mIsMoved:Z

    .line 331
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    .line 336
    .end local v2    # "edgeFlags":I
    :cond_f
    :goto_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->show(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 324
    .restart local v2    # "edgeFlags":I
    :cond_10
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mGuideWindow:Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowGuideWindow;->setGuideState(I)V

    goto :goto_1

    .line 334
    .end local v2    # "edgeFlags":I
    :cond_11
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mInitRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 342
    .end local v3    # "readyToFreeform":Z
    :pswitch_3
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->isEdge()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-boolean v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mNotSupport:Z

    if-eqz v7, :cond_13

    .line 353
    :cond_12
    :goto_3
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->reset()V

    goto/16 :goto_0

    .line 343
    :cond_13
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->readyToFreeform(II)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 344
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v7}, Landroid/os/SystemVibrator;->semIsHapticSupported()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 345
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_MAX:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/os/SystemVibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 347
    :cond_14
    new-instance v4, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;

    .line 348
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v7

    iget v8, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTaskId:I

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 347
    invoke-direct {v4, v7, v8, v9}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;-><init>(IILandroid/graphics/Rect;)V

    .line 349
    .local v4, "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 350
    const/4 v8, 0x1

    .line 349
    invoke-virtual {v7, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 357
    .end local v4    # "resizeInfo":Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$ResizeInfo;
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/wm/MultiWindowPointerEventListenerImpl;->reset()V

    goto/16 :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
