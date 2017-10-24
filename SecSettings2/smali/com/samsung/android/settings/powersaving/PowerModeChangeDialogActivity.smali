.class public Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mAodStatus:I

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mLowPowerMode:Z

.field private mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

.field private mPowerSavingMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 68
    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    .line 71
    iput v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    .line 80
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 560
    new-instance v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 58
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 34

    .prologue
    .line 218
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    const/4 v15, 0x1

    .line 220
    .local v15, "disablePSM":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 221
    const v3, 0x7f0401cb

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v33

    .line 223
    .local v33, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 224
    const v3, 0x7f0401d1

    const/4 v4, 0x0

    .line 223
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 227
    .local v17, "headerView":Landroid/view/View;
    const v2, 0x7f110550

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 228
    .local v21, "maximumPreview":Landroid/widget/ImageView;
    const v2, 0x7f110530

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 229
    .local v16, "dividerView":Landroid/view/View;
    if-eqz v21, :cond_0

    .line 230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 231
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 242
    :cond_0
    :goto_1
    const v2, 0x7f110551

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 244
    .local v22, "modeSummary":Landroid/widget/TextView;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 248
    const v2, 0x7f110552

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v3, 0x7f0205b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 253
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v7, "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;>;"
    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 286
    const-string/jumbo v2, "limit_brightness_state"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 287
    const-string/jumbo v2, "limit_brightness_state"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/16 v5, 0x50

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 289
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getLastPSMbrightness(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 291
    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    .line 290
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setLastPSMbrightness(Landroid/content/Context;I)V

    .line 293
    :cond_3
    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    .line 295
    .local v9, "brightnessStatus":I
    add-int/lit8 v25, v9, -0x5a

    .line 296
    .local v25, "percent":I
    if-lez v25, :cond_4

    .line 297
    const-string/jumbo v2, "limit_brightness_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    const/16 v5, 0x5a

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 298
    const/16 v25, 0x0

    .line 300
    :cond_4
    if-nez v25, :cond_10

    .line 301
    const v2, 0x7f0b08b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 303
    .local v10, "brightnessStatusString":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 306
    :cond_5
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v3, 0x7f0b01b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 307
    const/4 v4, 0x0

    .line 306
    invoke-direct {v2, v3, v4, v10}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const-string/jumbo v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 312
    const-string/jumbo v2, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 313
    const-string/jumbo v2, "screen_resolution_state"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 314
    const-string/jumbo v2, "screen_resolution_state"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 316
    :cond_6
    const-string/jumbo v2, "screen_resolution_state"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v29

    .line 318
    .local v29, "resolutionStatus":I
    const/16 v30, 0x0

    .line 319
    .local v30, "resolutionStr":Ljava/lang/String;
    packed-switch v29, :pswitch_data_0

    .line 328
    const v2, 0x7f0b05a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 331
    .local v30, "resolutionStr":Ljava/lang/String;
    :goto_3
    const/16 v18, 0x0

    .line 332
    .local v18, "isWarning":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    move/from16 v0, v29

    if-eq v2, v0, :cond_7

    .line 333
    const/16 v18, 0x1

    .line 335
    :cond_7
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    const v2, 0x7f0b05a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 336
    if-eqz v18, :cond_11

    const v2, 0x7f0b0aef

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 335
    :goto_4
    move-object/from16 v0, v30

    invoke-direct {v3, v4, v2, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v18    # "isWarning":Z
    .end local v29    # "resolutionStatus":I
    .end local v30    # "resolutionStr":Ljava/lang/String;
    :cond_8
    const-string/jumbo v2, "restricted_device_performance"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 343
    const-string/jumbo v2, "restricted_device_performance"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 344
    const-string/jumbo v2, "restricted_device_performance"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 346
    :cond_9
    const-string/jumbo v2, "restricted_device_performance"

    .line 347
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    .line 346
    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v26

    .line 348
    .local v26, "performanceStatus":I
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    .line 349
    const v2, 0x7f0b0aad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 350
    const v2, 0x7f0b0ab5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 351
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_12

    const v2, 0x7f0b0aa4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 348
    :goto_5
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isRestrictBackDataEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 356
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "low_power_back_data_off"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 363
    .local v13, "dataStatus":I
    :goto_6
    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    .line 364
    const v2, 0x7f0b0ab8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 372
    .local v14, "dataSummary":Ljava/lang/String;
    :goto_7
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    .line 373
    const v2, 0x7f0b0aae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 375
    const/4 v2, 0x1

    if-ne v13, v2, :cond_16

    const v2, 0x7f0b0aa5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    :goto_8
    invoke-direct {v3, v4, v14, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .end local v13    # "dataStatus":I
    .end local v14    # "dataSummary":Ljava/lang/String;
    :cond_a
    :goto_9
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    const v5, 0x7f0401cf

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isAODServiceEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 396
    const-string/jumbo v2, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 397
    const-string/jumbo v2, "psm_always_on_display_mode"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 398
    const-string/jumbo v2, "psm_always_on_display_mode"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPSMValue(Landroid/content/Context;Ljava/lang/String;III)V

    .line 400
    :cond_b
    const-string/jumbo v2, "psm_always_on_display_mode"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    .line 401
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    .line 402
    const v2, 0x7f0b0405

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAodStatus:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    const v2, 0x7f0b0aa5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    :goto_a
    const/4 v5, 0x0

    .line 401
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v31, v0

    .line 409
    .local v31, "sidePadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0571

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 410
    .local v8, "bottomPadding":I
    const v2, 0x7f110531

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 411
    .local v11, "buttonView":Landroid/view/View;
    const/4 v2, 0x0

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-virtual {v11, v0, v2, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v24

    .line 414
    .local v24, "offTime":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getBatteryRemainingTime(Landroid/content/Context;I)I

    move-result v23

    .line 416
    .local v23, "modeTime":I
    sub-int v27, v23, v24

    .line 417
    .local v27, "reservedTime":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v28

    .line 419
    .local v28, "reservedTimeString":Ljava/lang/String;
    const v2, 0x7f110183

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 420
    if-eqz v15, :cond_1b

    .line 421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b1491

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isDisableMaxMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setEnabled(Z)V

    .line 435
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;Z)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const v2, 0x7f110532

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 470
    .local v12, "cancelButtonView":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-virtual {v12, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 472
    const v2, 0x7f110183

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b107a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getTimeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v32

    .line 484
    .local v32, "timeString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0abd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0abe

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 486
    .local v20, "mPSMUltraSummary":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    .end local v20    # "mPSMUltraSummary":Ljava/lang/String;
    :goto_c
    const v2, 0x102000a

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    .line 498
    .local v19, "listView":Landroid/widget/ListView;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$ModeDetailAdapter;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 500
    const v2, 0x106000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 503
    return-object v33

    .line 218
    .end local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;>;"
    .end local v8    # "bottomPadding":I
    .end local v9    # "brightnessStatus":I
    .end local v10    # "brightnessStatusString":Ljava/lang/String;
    .end local v11    # "buttonView":Landroid/view/View;
    .end local v12    # "cancelButtonView":Landroid/view/View;
    .end local v15    # "disablePSM":Z
    .end local v16    # "dividerView":Landroid/view/View;
    .end local v17    # "headerView":Landroid/view/View;
    .end local v19    # "listView":Landroid/widget/ListView;
    .end local v21    # "maximumPreview":Landroid/widget/ImageView;
    .end local v22    # "modeSummary":Landroid/widget/TextView;
    .end local v23    # "modeTime":I
    .end local v24    # "offTime":I
    .end local v25    # "percent":I
    .end local v26    # "performanceStatus":I
    .end local v27    # "reservedTime":I
    .end local v28    # "reservedTimeString":Ljava/lang/String;
    .end local v31    # "sidePadding":I
    .end local v32    # "timeString":Ljava/lang/String;
    .end local v33    # "view":Landroid/view/View;
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "disablePSM":Z
    goto/16 :goto_0

    .line 234
    .restart local v16    # "dividerView":Landroid/view/View;
    .restart local v17    # "headerView":Landroid/view/View;
    .restart local v21    # "maximumPreview":Landroid/widget/ImageView;
    .restart local v33    # "view":Landroid/view/View;
    :cond_f
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 301
    .restart local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;>;"
    .restart local v9    # "brightnessStatus":I
    .restart local v22    # "modeSummary":Landroid/widget/TextView;
    .restart local v25    # "percent":I
    :cond_10
    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "brightnessStatusString":Ljava/lang/String;
    goto/16 :goto_2

    .line 321
    .restart local v29    # "resolutionStatus":I
    .local v30, "resolutionStr":Ljava/lang/String;
    :pswitch_0
    const v2, 0x7f0b05a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "resolutionStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 324
    .local v30, "resolutionStr":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b05a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v30

    .local v30, "resolutionStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 336
    .restart local v18    # "isWarning":Z
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 351
    .end local v18    # "isWarning":Z
    .end local v29    # "resolutionStatus":I
    .end local v30    # "resolutionStr":Ljava/lang/String;
    .restart local v26    # "performanceStatus":I
    :cond_12
    const v2, 0x7f0b0aa5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 359
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ultra_power_mode_back_data_off"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .restart local v13    # "dataStatus":I
    goto/16 :goto_6

    .line 366
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 367
    const v2, 0x7f0b0ab9

    .line 366
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "dataSummary":Ljava/lang/String;
    goto/16 :goto_7

    .line 368
    .end local v14    # "dataSummary":Ljava/lang/String;
    :cond_15
    const v2, 0x7f0b0ab7

    goto :goto_d

    .line 375
    .restart local v14    # "dataSummary":Ljava/lang/String;
    :cond_16
    const v2, 0x7f0b0aa4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 378
    .end local v13    # "dataStatus":I
    .end local v14    # "dataSummary":Ljava/lang/String;
    :cond_17
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isNetworkPowerSavingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 379
    const-string/jumbo v2, "psm_network_power_saving"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_18

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "psm_network_power_saving"

    const-string/jumbo v4, "0,1"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 382
    :cond_18
    const-string/jumbo v2, "psm_network_power_saving"

    .line 383
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v4, 0x2

    .line 382
    move-object/from16 v0, p0

    invoke-static {v0, v2, v4, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMValue(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    .line 385
    .restart local v13    # "dataStatus":I
    new-instance v3, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;

    .line 386
    const v2, 0x7f0b0aba

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 387
    const v2, 0x7f0b0ab7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 388
    const/4 v2, 0x1

    if-ne v13, v2, :cond_19

    const v2, 0x7f0b0aa4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 385
    :goto_e
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 388
    :cond_19
    const v2, 0x7f0b0aa5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 404
    .end local v13    # "dataStatus":I
    :cond_1a
    const v2, 0x7f0b0aa4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 423
    .restart local v8    # "bottomPadding":I
    .restart local v11    # "buttonView":Landroid/view/View;
    .restart local v23    # "modeTime":I
    .restart local v24    # "offTime":I
    .restart local v27    # "reservedTime":I
    .restart local v28    # "reservedTimeString":Ljava/lang/String;
    .restart local v31    # "sidePadding":I
    :cond_1b
    if-lez v24, :cond_1c

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0ab3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/settings/widget/RoundButtonView;->setTextWithLowerCase(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 426
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0437

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 488
    .restart local v12    # "cancelButtonView":Landroid/view/View;
    .restart local v32    # "timeString":Ljava/lang/String;
    :cond_1d
    if-lez v24, :cond_1e

    if-lez v27, :cond_1e

    .line 489
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 490
    const/4 v3, 0x0

    aput-object v32, v2, v3

    .line 491
    const v3, 0x7f0b0ac4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 489
    const v3, 0x7f0b0ac2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 493
    :cond_1e
    const v2, 0x7f0b0ac3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v4, "fromWhere"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 156
    const-string/jumbo v4, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    iput v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    .line 170
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "low_power"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mLowPowerMode:Z

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 174
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    if-ne v2, v3, :cond_4

    .line 175
    const v2, 0x7f0b0ac0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 176
    const-string/jumbo v2, "PowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 181
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 182
    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setupAlert()V

    .line 152
    return-void

    .line 159
    .end local v1    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 160
    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->startPSMAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 161
    invoke-static {p0, v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setPowerSavingMode(Landroid/content/Context;I)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->finish()V

    .line 163
    return-void

    .line 165
    :cond_3
    const-string/jumbo v4, "battery_mode"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    goto :goto_0

    .line 178
    .restart local v1    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_4
    const v2, 0x7f0b0ac1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 179
    const-string/jumbo v2, "UltraPowerSavingModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 192
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 194
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 195
    const v5, 0x7f0401cb

    .line 194
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 197
    const v5, 0x7f0401d1

    .line 196
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 200
    .local v1, "headerView":Landroid/view/View;
    const v4, 0x7f110550

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .local v2, "maximumPreview":Landroid/widget/ImageView;
    const v4, 0x7f110530

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 203
    iget v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mPowerSavingMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 204
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f0205b0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    :goto_1
    return-void

    .line 207
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iput-object p0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    .line 115
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 107
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->initDialog()V

    .line 141
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 553
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method
