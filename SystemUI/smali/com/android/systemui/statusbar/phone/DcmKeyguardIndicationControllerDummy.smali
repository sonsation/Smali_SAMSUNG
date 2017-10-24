.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardIndicationControllerDummy;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "DcmKeyguardIndicationControllerDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>()V

    .line 33
    const-string/jumbo v0, "DcmKeyguardIndicationControllerDummy"

    const-string/jumbo v1, "Make Dummy DcmKeyguardIndicationControllerDummy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public hideTransientIndication()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 0
    .param p1, "delayMs"    # J

    .prologue
    .line 39
    return-void
.end method

.method public setRestingIndication(Ljava/lang/String;)V
    .locals 0
    .param p1, "restingIndication"    # Ljava/lang/String;

    .prologue
    .line 37
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 47
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 0
    .param p1, "transientIndication"    # I

    .prologue
    .line 40
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 0
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 42
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 0
    .param p1, "transientIndication"    # Ljava/lang/String;
    .param p2, "textColor"    # I

    .prologue
    .line 44
    return-void
.end method
