.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 1068
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 1028
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 1049
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateChildViewsLook()V

    .line 1083
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1062
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 1035
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->-wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1057
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 1020
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 1075
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 1007
    return-void
.end method
