.class Lcom/android/systemui/statusbar/phone/LockIcon$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceRecognitionStateChanged(Z)V
    .locals 1
    .param p1, "faceRecognitionRunning"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->-set0(Lcom/android/systemui/statusbar/phone/LockIcon;Z)Z

    .line 116
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 114
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 93
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 103
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 98
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 88
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 108
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$1;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 83
    return-void
.end method
