.class public Lcom/android/server/policy/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/IMultiPhoneWindowManagerPolicy;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mH:Landroid/os/Handler;

.field private mImeTargetFreeformTaskId:I

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 64
    sget-object v0, Lcom/android/server/SamsungCoreServices$ServiceTag;->TAG_MULTIWINDOW_MANAGER_INTERNAL:Lcom/android/server/SamsungCoreServices$ServiceTag;

    invoke-static {v0}, Lcom/android/server/SamsungCoreServices;->getService(Lcom/android/server/SamsungCoreServices$ServiceTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    iput-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    .line 62
    return-void
.end method


# virtual methods
.method public adjustImmersiveFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 4
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "targetWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p3, "systemUiVisibilityFlag"    # I

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-static {}, Lcom/android/server/policy/PolicyControl;->isForceImmersiveMode()Z

    move-result v2

    .line 188
    .local v2, "isForceImmersiveMode":Z
    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/MultiPhoneWindowManager;->isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq p2, p1, :cond_2

    .line 191
    move v0, p3

    .line 192
    .local v0, "adjustedFlag":I
    and-int/lit16 v3, p3, 0x1802

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 194
    .local v1, "hasImmersiveFlag":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 195
    and-int/lit16 v0, p3, -0x1803

    .line 199
    :cond_1
    return v0

    .line 201
    .end local v0    # "adjustedFlag":I
    .end local v1    # "hasImmersiveFlag":Z
    :cond_2
    return p3
.end method

.method public getDecorCaptionWindowHeight()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->getDecorCaptionWindowHeight()I

    move-result v0

    return v0
.end method

.method public hasDockedStack()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->hasDockedStack()Z

    move-result v0

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExpandedDockedStack()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isExpandedDockedStack()Z

    move-result v0

    return v0

    .line 151
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFreeformWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "window"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    .line 172
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    .prologue
    .line 164
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isSnapWindowRunning()Z

    move-result v0

    return v0

    .line 167
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public minimizeFreeform(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x1

    .line 125
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1, v1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    .line 124
    :cond_0
    return-void
.end method

.method public minimizeOrSildeAllFreeform()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 92
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_0

    .line 94
    const-string v2, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minimizeOrSildeAllFreeform: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v1, :cond_1

    const-string v1, "slide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->slideOrUnslideAllFreeform(Z)V

    .line 113
    :cond_0
    :goto_1
    iput v6, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    .line 91
    return-void

    .line 94
    :cond_1
    const-string v1, "minimize"

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeform(I)Z

    .line 102
    iget v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    .line 103
    .local v0, "taskId":I
    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    if-le v1, v6, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/MultiPhoneWindowManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/MultiPhoneWindowManager;I)V

    .line 109
    const-wide/16 v4, 0x190

    .line 104
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public minimizeOtherFreeforms(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 118
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeOhterFreeforms(Landroid/os/IBinder;)V

    .line 117
    :cond_0
    return-void
.end method

.method public multiWindowTypeToLayerLw(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, -0x1

    return v0

    .line 72
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 73
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 74
    :pswitch_2
    const/16 v0, 0xb

    return v0

    .line 75
    :pswitch_3
    const/16 v0, 0x15

    return v0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyFreeformModeChange()V
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 133
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ADJUST_STACK_ORDER:Z

    .line 132
    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->changeFreeformMode()V

    .line 131
    :cond_0
    return-void
.end method

.method public setMultiWindowEnabled(ZLjava/lang/String;)V
    .locals 4
    .param p1, "b"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string v2, "MultiPhoneWindowManager"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p2, p1, v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public slideOrUnslideAllFreeform()V
    .locals 2

    .prologue
    .line 140
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 141
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    .line 140
    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->slideOrUnslideAllFreeform(Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public updateImeTargetFreeformTaskId()V
    .locals 3

    .prologue
    .line 84
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getImeTargetFreeformTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    .line 86
    const-string v0, "MultiPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImeTargetFreeformTaskId: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/MultiPhoneWindowManager;->mImeTargetFreeformTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method
