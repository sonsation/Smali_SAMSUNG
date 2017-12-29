.class public Lcom/android/server/policy/AODWindowManager;
.super Ljava/lang/Object;
.source "AODWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/AODWindowPolicy;


# static fields
.field static final DEBUG:Z = true

.field static final SAFE_DEBUG:Z

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AODWindowManager"


# instance fields
.field final AOD_APP_START:Ljava/lang/String;

.field final AOD_SCREEN_OFF:Ljava/lang/String;

.field final AOD_SCREEN_ON:Ljava/lang/String;

.field mAODStartState:I

.field mContext:Landroid/content/Context;

.field mIsNightClockShowing:Z

.field private mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

.field mStatusBarController:Lcom/android/server/policy/StatusBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/AODWindowManager;->SAFE_DEBUG:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.app.aodservice.intent.action.AOD_APP_START"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_APP_START:Ljava/lang/String;

    .line 46
    const-string v0, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_ON"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_SCREEN_ON:Ljava/lang/String;

    .line 47
    const-string v0, "com.samsung.android.app.aodservice.intent.action.AOD_SCREEN_OFF"

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->AOD_SCREEN_OFF:Ljava/lang/String;

    .line 59
    iput v1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    .line 40
    return-void
.end method


# virtual methods
.method public canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 206
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 220
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    return v0

    .line 217
    :sswitch_0
    return v0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 228
    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v3, 0x96a

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    .line 227
    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 206
    :sswitch_data_0
    .sparse-switch
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
        0x833 -> :sswitch_0
        0x8ac -> :sswitch_0
        0x8ad -> :sswitch_0
        0x8b1 -> :sswitch_0
        0x8de -> :sswitch_0
        0x8df -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 271
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- AOD Window Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNightClock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 278
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAODStartState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget v0, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsNightClockShowing="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 270
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "changes":I
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget v1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    if-ne v1, v2, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    .line 159
    const-string v1, "AODWindowManager"

    const-string v2, "finishPostLayoutPolicyLw : mNightClock.hideLw by screenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x6

    .line 161
    iput-boolean v3, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 165
    iput-boolean v4, p0, Lcom/android/server/policy/AODWindowManager;->mIsNightClockShowing:Z

    .line 166
    iget-object v1, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    .line 167
    const-string v1, "AODWindowManager"

    const-string v2, "finishPostLayoutPolicyLw : mNightClock.show"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public finishWindowsDrawn()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;Lcom/android/server/policy/StatusBarController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "spwm"    # Lcom/android/server/policy/SamsungWindowManagerPolicy;
    .param p4, "statusBarController"    # Lcom/android/server/policy/StatusBarController;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 67
    iput-object p3, p0, Lcom/android/server/policy/AODWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .line 68
    iput-object p4, p0, Lcom/android/server/policy/AODWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 64
    return-void
.end method

.method public isAODWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8b1

    if-ne v0, v1, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAODWindowHasWallpaper(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v4, 0x100000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    if-eqz p1, :cond_1

    .line 256
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x96a

    if-eq v2, v3, :cond_0

    .line 257
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x8b1

    if-ne v2, v3, :cond_3

    .line 258
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 259
    return v0

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    .line 263
    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 266
    :cond_3
    return v1
.end method

.method public isNightClockVisible()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isObscuredWindow(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8b1

    if-ne v0, v1, :cond_0

    .line 233
    return v2

    .line 236
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 238
    return v2

    .line 242
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 125
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    .line 128
    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 129
    const-string v2, "PhoneWindowManager"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, -0x7

    return v0

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    .line 136
    const-string v0, "AODWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NIGHTCLOCK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x8b1
        :pswitch_0
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mNightClock:Landroid/view/WindowManagerPolicy$WindowState;

    .line 144
    :cond_0
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    .line 183
    return-void
.end method

.method public selectRotationAnimationLw([I)V
    .locals 2
    .param p1, "anim"    # [I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/android/server/policy/AODWindowManager;->isNightClockVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const v0, 0x10a0087

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 191
    const v0, 0x10a0086

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 188
    :cond_0
    return-void
.end method

.method startAODService(I)Z
    .locals 4
    .param p1, "aodStartState"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 77
    iput p1, p0, Lcom/android/server/policy/AODWindowManager;->mAODStartState:I

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_AOD_DOZE_SERVICE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    return v2

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    const-string v1, "aod_mode"

    .line 81
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    const-string v1, "aod_night_mode"

    .line 83
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/AODWindowManager;->mSPWM:Lcom/android/server/policy/SamsungWindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/AODWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/AODWindowManager$1;-><init>(Lcom/android/server/policy/AODWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_2
    return v2
.end method

.method public systemBooted()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/AODWindowManager;->startAODService(I)Z

    .line 72
    return-void
.end method
