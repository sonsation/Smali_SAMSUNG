.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;
.super Landroid/os/Handler;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 128
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 130
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    .line 131
    const v1, 0x7f0f06b2

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap8(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap7(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;ZI)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x12cc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
