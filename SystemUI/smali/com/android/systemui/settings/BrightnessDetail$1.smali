.class Lcom/android/systemui/settings/BrightnessDetail$1;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAuto:Landroid/widget/Switch;

.field private mAutoChecked:Z

.field private mAutoContainer:Landroid/view/View;

.field private mQuickAccess:Landroid/widget/Switch;

.field private mQuickAccessChecked:Z

.field private mQuickAccessContainer:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessDetail;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/BrightnessDetail$1;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoChecked:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/BrightnessDetail$1;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/BrightnessDetail$1;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessChecked:Z

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessDetail;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04011e

    .line 115
    const/4 v8, 0x0

    .line 114
    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    const v6, 0x7f130333

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 118
    .local v4, "icon":Landroid/widget/ImageView;
    const v6, 0x7f1303a2

    .line 117
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/BrightnessDetail;

    .line 119
    .local v3, "detail":Lcom/android/systemui/settings/BrightnessDetail;
    const v6, 0x7f13032e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "autuTitle":Landroid/widget/TextView;
    const v6, 0x7f130334

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/settings/ToggleSlider;

    .line 121
    .local v5, "slider":Lcom/android/systemui/settings/ToggleSlider;
    const v6, 0x7f1303a3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, "auto":Landroid/widget/TextView;
    const v6, 0x7f13032f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    .local v1, "autoTitleSummary":Landroid/widget/TextView;
    const v6, 0x7f13032d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    .line 128
    const v6, 0x7f130330

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    .line 129
    invoke-static {p1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 130
    invoke-static {p1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v6

    .line 129
    if-eqz v6, :cond_2

    .line 131
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoChecked:Z

    .line 165
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/settings/BrightnessDetail$1$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoChecked:Z

    .line 192
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$2;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/settings/BrightnessDetail$1$2;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v6, 0x7f130331

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessContainer:Landroid/view/View;

    .line 222
    const v6, 0x7f130332

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    .line 223
    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v6

    const-string/jumbo v8, "brightness_on_top"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 224
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessChecked:Z

    .line 225
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessContainer:Landroid/view/View;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$3;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccessChecked:Z

    .line 245
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mQuickAccess:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$4;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/BrightnessDetail$1$4;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/systemui/settings/BrightnessDetail;->setVisibility(I)V

    .line 266
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6, p2}, Lcom/android/systemui/settings/BrightnessDetail;->-set1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;

    .line 269
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get2(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/settings/BrightnessDetail$1$5;

    invoke-direct {v7, p0, v5, v4}, Lcom/android/systemui/settings/BrightnessDetail$1$5;-><init>(Lcom/android/systemui/settings/BrightnessDetail$1;Lcom/android/systemui/settings/ToggleSlider;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 287
    return-object p2

    .line 133
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 134
    const v6, 0x7f0f0464

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f0465

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 137
    const-string/jumbo v8, "screen_brightness_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    .line 136
    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 137
    const/4 v8, 0x1

    .line 136
    if-ne v6, v8, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 139
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v6, :cond_1

    .line 140
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.android.systemui.statusbar.policy.quicksetting"

    .line 141
    const-string/jumbo v9, "QS25"

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x3e8

    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    .line 140
    invoke-static {v7, v8, v9, v10, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 136
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 141
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 144
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 146
    const v6, 0x7f0f0469

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 147
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v6, :cond_6

    .line 148
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0f046b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 153
    const-string/jumbo v8, "display_outdoor_mode"

    const/4 v9, 0x0

    const/4 v10, -0x2

    .line 152
    invoke-static {v6, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 153
    const/4 v8, 0x1

    .line 152
    if-ne v6, v8, :cond_7

    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v6, :cond_1

    .line 156
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "com.android.systemui.statusbar.policy.quicksetting"

    .line 157
    const-string/jumbo v9, "QS25"

    const-string/jumbo v10, "outdoor"

    .line 158
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAuto:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x3e8

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 156
    invoke-static {v7, v8, v9, v10, v6}, Lcom/android/keyguard/util/GsimLogManager;->sendStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v6}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/16 v8, 0xf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f0f046a

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 152
    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    .line 158
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 161
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->mAutoContainer:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 223
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 307
    const/16 v0, 0x259

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->-get1(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f037e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 302
    return p1
.end method
