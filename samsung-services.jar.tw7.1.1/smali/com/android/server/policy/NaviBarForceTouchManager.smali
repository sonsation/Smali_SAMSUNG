.class public Lcom/android/server/policy/NaviBarForceTouchManager;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"


# static fields
.field public static final CENTER_KEY:I = 0x2

.field private static final DEBUG:Z = true

.field private static final EPSILON:F = 1.0E-5f

.field public static final LEFT_KEY:I = 0x1

.field private static final NAVBAR_INVISIBLE_BUTTON_HALF_LENGTH_RATIO:D = 0.16670000553131104

.field private static final NAVBAR_VISIBLE_BUTTON_HALF_LENGTH_RATIO:D = 0.11110000312328339

.field public static final RIGHT_KEY:I = 0x3

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "NaviBarForceTouchMgr"


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHapticPlayed:Z

.field private mInitScreenHeight:I

.field private mInitScreenWidth:I

.field private mNaviBarVisible:Z

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/NaviBarForceTouchManager;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 73
    iput-object p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    .line 76
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    .line 77
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 70
    return-void
.end method

.method private dismissKeyguard()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 194
    const-string v2, "navigationbar_unlock_with_home_button"

    .line 193
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 195
    .local v0, "value":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 196
    const-string v1, "NaviBarForceTouchMgr"

    const-string v2, "dismissKeyguard by force touch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/NaviBarForceTouchManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/NaviBarForceTouchManager$1;-><init>(Lcom/android/server/policy/NaviBarForceTouchManager;)V

    .line 202
    const-wide/16 v4, 0x64

    .line 197
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    :cond_1
    return-void
.end method

.method private forceClickImmersive(I)V
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 233
    const-string v0, "NaviBarForceTouchMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceClickImmersive() buttonId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const/16 v0, 0xbb

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    .line 242
    :pswitch_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->injectKeyEvent(I)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getEventId(IIZ)I
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isNaviVisible"    # Z

    .prologue
    .line 81
    const/4 v5, -0x1

    .line 82
    .local v5, "event":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v10

    if-nez v10, :cond_1

    .line 83
    :cond_0
    const/4 v10, -0x1

    return v10

    .line 85
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    .line 86
    .local v6, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    .line 87
    .local v8, "screenH":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    .line 88
    .local v9, "screenW":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    mul-int/2addr v10, v8

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    float-to-int v7, v10

    .line 89
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v10, :cond_2

    if-eqz p3, :cond_2

    int-to-float v10, v7

    const/high16 v11, 0x3e400000    # 0.1875f

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v4, v10

    .line 90
    .local v4, "deadZone":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v10, :cond_3

    if-eqz p3, :cond_3

    const-wide v2, 0x3fbc710cc0000000L    # 0.11110000312328339

    .line 93
    .local v2, "buttonHalfWidthRatio":D
    :goto_1
    const-string v10, "NaviBarForceTouchMgr"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getEventId() x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPWM.mScreenOnFully="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v12, v12, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isNaviVisible="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 94
    const-string v12, ", screenH="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 94
    const-string v12, ", currentHeight="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 94
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 95
    const-string v12, ", screenW="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 95
    const-string v12, ", height="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 95
    const-string v12, ", deadzone="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 95
    const-string v12, ", frame="

    .line 93
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sub-int v10, v7, v4

    sub-int v10, v8, v10

    move/from16 v0, p2

    if-ge v0, v10, :cond_4

    .line 98
    const/4 v10, -0x1

    return v10

    .line 89
    .end local v2    # "buttonHalfWidthRatio":D
    .end local v4    # "deadZone":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "deadZone":I
    goto/16 :goto_0

    .line 90
    :cond_3
    const-wide v2, 0x3fc5566d00000000L    # 0.16670000553131104

    .restart local v2    # "buttonHalfWidthRatio":D
    goto/16 :goto_1

    .line 99
    :cond_4
    div-int/lit8 v10, v9, 0x3

    move/from16 v0, p1

    if-ge v0, v10, :cond_6

    .line 100
    const/4 v5, 0x1

    .line 106
    :cond_5
    :goto_2
    return v5

    .line 101
    :cond_6
    move/from16 v0, p1

    int-to-double v10, v0

    div-int/lit8 v12, v9, 0x2

    int-to-double v12, v12

    int-to-double v14, v9

    mul-double/2addr v14, v2

    sub-double/2addr v12, v14

    cmpl-double v10, v10, v12

    if-lez v10, :cond_7

    move/from16 v0, p1

    int-to-double v10, v0

    div-int/lit8 v12, v9, 0x2

    int-to-double v12, v12

    int-to-double v14, v9

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_7

    .line 102
    const/4 v5, 0x2

    .line 101
    goto :goto_2

    .line 103
    :cond_7
    mul-int/lit8 v10, v9, 0x2

    div-int/lit8 v10, v10, 0x3

    move/from16 v0, p1

    if-le v0, v10, :cond_5

    .line 104
    const/4 v5, 0x3

    goto :goto_2
.end method

.method private injectKeyEvent(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/high16 v3, 0x100000

    const/4 v2, 0x0

    .line 248
    if-gez p1, :cond_0

    .line 249
    return-void

    .line 251
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->sendEvent(IIIJ)V

    .line 247
    return-void
.end method

.method private isConventionalMode()Z
    .locals 3

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGamePressureTouchLocked(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 224
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "game_pressure_touch_lock"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 228
    :goto_0
    return v1

    .line 224
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NaviBarForceTouchMgr"

    const-string v3, "Exception on isGamePressureTouchLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    .line 218
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 216
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendEvent(IIIJ)V
    .locals 16
    .param p1, "keyCode"    # I
    .param p2, "action"    # I
    .param p3, "flags"    # I
    .param p4, "when"    # J

    .prologue
    .line 256
    move/from16 v0, p3

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    .line 257
    .local v10, "repeatCount":I
    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    .line 258
    or-int/lit8 v2, p3, 0x8

    or-int/lit8 v14, v2, 0x40

    .line 257
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 258
    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v4, p4

    move-wide/from16 v6, p4

    move/from16 v8, p2

    move/from16 v9, p1

    .line 257
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 259
    .local v3, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 255
    return-void

    .line 256
    .end local v3    # "ev":Landroid/view/KeyEvent;
    .end local v10    # "repeatCount":I
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "repeatCount":I
    goto :goto_0
.end method


# virtual methods
.method public onForcePressed(II)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 122
    .local v2, "visible":Z
    :goto_0
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(IIZ)I

    move-result v0

    .line 124
    .local v0, "event":I
    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->isConventionalMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const-string v3, "NaviBarForceTouchMgr"

    const-string v4, "conventional mode , ignore force touch."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .end local v0    # "event":I
    .end local v2    # "visible":Z
    :cond_0
    move v2, v3

    .line 121
    goto :goto_0

    .line 130
    .restart local v0    # "event":I
    .restart local v2    # "visible":Z
    :cond_1
    const-string v5, "NaviBarForceTouchMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onForcePressed() x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", visible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mNaviBarVisible:Z

    .line 135
    if-eq v0, v8, :cond_2

    .line 136
    return-void

    .line 138
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 139
    return-void

    .line 142
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 143
    const-string v3, "NaviBarForceTouchMgr"

    const-string v4, "TalkbackEnabled,  skip force action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 147
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/server/policy/NaviBarForceTouchManager;->isGamePressureTouchLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 148
    const-string v3, "NaviBarForceTouchMgr"

    const-string v4, "Force touch disabled by GameTools. skip force action"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_5
    if-ne v0, v8, :cond_8

    move v1, v4

    .line 154
    .local v1, "shouldPlayHaptic":Z
    :goto_1
    if-eqz v1, :cond_6

    .line 155
    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v6, 0xc376

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7, v9, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 156
    iput-boolean v4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    .line 159
    :cond_6
    if-nez v2, :cond_7

    .line 160
    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 161
    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    .line 120
    :cond_7
    return-void

    .end local v1    # "shouldPlayHaptic":Z
    :cond_8
    move v1, v3

    .line 152
    goto :goto_1
.end method

.method public onForcePressedSleep()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "NaviBarForceTouchMgr"

    const-string v1, "onForcePressedSleep()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V

    .line 185
    return-void
.end method

.method public onForceReleased(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 168
    const-string v3, "NaviBarForceTouchMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForceReleased() x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHapticPlayed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 172
    .local v1, "visible":Z
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/policy/NaviBarForceTouchManager;->getEventId(IIZ)I

    move-result v0

    .line 174
    .local v0, "event":I
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eqz v1, :cond_1

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v4, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v5, 0xc377

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 178
    :cond_1
    if-eqz v1, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mNaviBarVisible:Z

    if-eqz v3, :cond_4

    .line 182
    .end local v0    # "event":I
    .end local v1    # "visible":Z
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mHapticPlayed:Z

    .line 166
    return-void

    :cond_3
    move v1, v2

    .line 171
    goto :goto_0

    .line 179
    .restart local v0    # "event":I
    .restart local v1    # "visible":Z
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->forceClickImmersive(I)V

    goto :goto_1
.end method

.method public onForceReleasedSleep(Z)V
    .locals 5
    .param p1, "playHaptic"    # Z

    .prologue
    .line 208
    const-string v0, "NaviBarForceTouchMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForceReleasedSleep() playHaptic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_FORCE:Landroid/os/Vibrator$SemMagnitudeTypes;

    const v2, 0xc377

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 206
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 0
    .param p1, "initWidth"    # I
    .param p2, "initHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenWidth:I

    .line 115
    iput p2, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mInitScreenHeight:I

    .line 116
    iput p3, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenWidth:I

    .line 117
    iput p4, p0, Lcom/android/server/policy/NaviBarForceTouchManager;->mScreenHeight:I

    .line 113
    return-void
.end method
