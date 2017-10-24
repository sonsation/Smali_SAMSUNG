.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardTouchHelpers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 3535
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffordanceTap()V
    .locals 2

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->deactivateNotificationRow()V

    .line 3539
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNotificationIconsOnlyOn()Z

    move-result v0

    .line 3539
    if-eqz v0, :cond_0

    .line 3541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/preview/NotificationPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewController;->reset()V

    .line 3546
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationController()Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setHelpText(I)V

    .line 3537
    return-void
.end method

.method public onUnlockExecuted()V
    .locals 1

    .prologue
    .line 3563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/swipe/SwipeAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/swipe/SwipeAnimator;->onUnlockExecuted()V

    .line 3564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 3562
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 3552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 3551
    return-void
.end method
