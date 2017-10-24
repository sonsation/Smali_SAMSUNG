.class final Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;
.super Ljava/lang/Object;
.source "AirplaneModeTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    return-void
.end method

.method private getSummary()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 666
    const v1, 0x7f0f0441

    .line 667
    .local v1, "message":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    .line 669
    .local v0, "isVoiceCapable":Z
    if-nez v0, :cond_2

    .line 670
    const v1, 0x7f0f042e

    .line 677
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v2, :cond_1

    .line 678
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isVoWifiProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 679
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v3, :cond_4

    const v1, 0x7f0f0443

    .line 686
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 671
    :cond_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_CMCC_POPUP:Z

    if-eqz v2, :cond_3

    .line 672
    const v1, 0x7f0f042f

    goto :goto_0

    .line 673
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v2, :cond_0

    .line 674
    const v1, 0x7f0f042b

    goto :goto_0

    .line 680
    :cond_4
    const v1, 0x7f0f0442

    goto :goto_1

    .line 682
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v2

    if-ne v2, v3, :cond_6

    const v1, 0x7f0f0445

    goto :goto_1

    .line 683
    :cond_6
    const v1, 0x7f0f0444

    goto :goto_1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 616
    const v0, 0x7f13022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 617
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 662
    const/16 v0, 0x70

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0440

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 629
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    .line 628
    if-eqz v0, :cond_0

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 633
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_SKT_POPUP:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0432

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-interface {v0, v1, v3}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 643
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0433

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 645
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 648
    :cond_3
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_OJT_POPUP:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_5

    .line 654
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-wrap5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    .line 657
    return p1

    .line 648
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-nez v0, :cond_4

    .line 649
    const-string/jumbo v0, "28601"

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 648
    if-eqz v0, :cond_4

    .line 650
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->-get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0434

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
