.class Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->showQSPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    .line 629
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get6(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get5(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->showEdit(Landroid/view/View;)V

    .line 632
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    .line 634
    const-string/jumbo v2, "QP02"

    .line 633
    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 639
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get4(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->showGridPopup()V

    goto :goto_0

    .line 643
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-wrap0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    goto :goto_0

    .line 647
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->launchContactUsApp(Landroid/content/Context;)V

    .line 648
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;->this$0:Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->-get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    .line 650
    const-string/jumbo v2, "QS23"

    .line 649
    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x7f13046f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
