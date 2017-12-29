.class public Lcom/android/server/policy/ReduceScreenManager;
.super Ljava/lang/Object;
.source "ReduceScreenManager.java"

# interfaces
.implements Lcom/android/server/policy/ReduceScreenPolicy;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ReduceScreenManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

.field private mHandler:Landroid/os/Handler;

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ReduceScreenManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 140
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "--- Reduce Screen Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungWindowManagerPolicy;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "samsungWindowManagerPolicy"    # Lcom/android/server/policy/SamsungWindowManagerPolicy;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/policy/ReduceScreenManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 64
    check-cast p3, Lcom/android/server/policy/SamsungPhoneWindowManager;

    .end local p3    # "samsungWindowManagerPolicy":Lcom/android/server/policy/SamsungWindowManagerPolicy;
    iput-object p3, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 61
    return-void
.end method

.method public isHomeTripleTapEnabled()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 146
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 160
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 148
    :sswitch_0
    const-string v0, "OneHandBG"

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 154
    :sswitch_1
    const-string v0, "OneHandTouch"

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x8ca -> :sswitch_0
        0x8ce -> :sswitch_1
    .end sparse-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 166
    iput-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 168
    iput-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    sget-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "ReduceScreenManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenTurnedOff(), enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    iget-object v4, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v4

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string v4, ", mEasyOneHandController="

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 75
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    move v0, v1

    .line 73
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string v4, ", mEasyOneHandHalder="

    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v4, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_3

    .line 73
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string v1, ", mSystemBooted="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 75
    goto :goto_0

    :cond_3
    move v1, v2

    .line 76
    goto :goto_1

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_1

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ReduceScreenManager$1;-><init>(Lcom/android/server/policy/ReduceScreenManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startService(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 95
    const-string v0, "ReduceScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSEM:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "ReduceScreenManager"

    const-string v1, "Reduce screen blocked emergency mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/ReduceScreenManager$2;-><init>(Lcom/android/server/policy/ReduceScreenManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public stopService(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 117
    const-string v0, "ReduceScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopService() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ReduceScreenManager$3;-><init>(Lcom/android/server/policy/ReduceScreenManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ReduceScreenManager"

    const-string v1, "systemBooted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method
