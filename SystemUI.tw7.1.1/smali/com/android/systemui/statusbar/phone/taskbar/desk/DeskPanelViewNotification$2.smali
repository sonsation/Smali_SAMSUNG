.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->val$to:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-wrap1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isCurrentPreviewState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isNextPreviewState()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getNextState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setCurrentState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/16 v1, 0x6000

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNextState(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
