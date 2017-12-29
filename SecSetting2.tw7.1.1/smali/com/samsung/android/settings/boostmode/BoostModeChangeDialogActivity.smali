.class public Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BoostModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;,
        Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;
    }
.end annotation


# instance fields
.field private mAD:Landroid/app/AlertDialog;

.field private mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mApplyEventId:I

.field private mBixbyCurrentStateId:Ljava/lang/String;

.field private mBoostMode:I

.field private mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

.field private mCancelEventId:I

.field private mContext:Landroid/content/Context;

.field private mCustomButton:Landroid/widget/TextView;

.field private mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomizeEventId:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFromWhere:Ljava/lang/String;

.field private mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenId:I

.field private setGLbyUs:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 71
    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    .line 81
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 116
    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    .line 646
    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 59
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 31

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 282
    const v3, 0x7f0401f8

    const/4 v4, 0x0

    .line 281
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v30

    .line 283
    .local v30, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 284
    const v3, 0x7f0401fe

    const/4 v4, 0x0

    .line 283
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 287
    .local v14, "headerView":Landroid/view/View;
    const v2, 0x7f11064a

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 288
    .local v17, "maximumPreview":Landroid/widget/ImageView;
    const v2, 0x7f11062b

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 289
    .local v11, "dividerView":Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    const v2, 0x7f11064b

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 294
    .local v18, "modeSummary":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 295
    const v2, 0x7f0b0cc2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 301
    .local v26, "summaryText":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0cc5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 302
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const v2, 0x7f11064c

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 307
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v3, 0x7f020651

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v7, "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 344
    const/4 v4, 0x1

    const/16 v5, 0x64

    .line 343
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 346
    const/4 v4, 0x2

    const/16 v5, 0x64

    .line 345
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    .line 348
    const/4 v4, 0x3

    const/16 v5, 0x64

    .line 347
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 350
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getLastPerfmodebrightness(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 351
    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setLastPerfmodebrightness(Landroid/content/Context;I)V

    .line 354
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    .line 356
    .local v16, "maxBrightnessStatus":I
    add-int/lit8 v19, v16, -0x5a

    .line 357
    .local v19, "percent":I
    if-gez v19, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_maximum_brightness"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/16 v5, 0x5a

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 359
    const/16 v19, 0x0

    .line 361
    :cond_3
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 362
    const v2, 0x7f0b0243

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 364
    if-nez v19, :cond_11

    const v2, 0x7f0b0a63

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    :goto_1
    const/4 v5, 0x0

    .line 361
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const-string/jumbo v2, "WQHD,FHD,HD"

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 370
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 369
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 372
    const/4 v4, 0x2

    const/4 v5, 0x2

    .line 371
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    .line 374
    const/4 v4, 0x3

    const/4 v5, 0x2

    .line 373
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v22

    .line 379
    .local v22, "resolutionStatus":I
    packed-switch v22, :pswitch_data_0

    .line 388
    const v2, 0x7f0b06e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 391
    .local v23, "resolutionStr":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v20

    .line 392
    .local v20, "point":Landroid/graphics/Point;
    if-eqz v20, :cond_5

    .line 393
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 394
    .local v21, "ratio":F
    const v2, 0x3fe38e39

    cmpl-float v2, v21, v2

    if-lez v2, :cond_5

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 398
    .end local v21    # "ratio":F
    :cond_5
    const v2, 0x7f0b0cd1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 399
    .local v24, "resolutionSummary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v2

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_screen_resolution"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 399
    if-eq v2, v3, :cond_6

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b0cd2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 403
    :cond_6
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    const v3, 0x7f0b06db

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v2, v3, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v20    # "point":Landroid/graphics/Point;
    .end local v22    # "resolutionStatus":I
    .end local v23    # "resolutionStr":Ljava/lang/String;
    .end local v24    # "resolutionSummary":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    .line 413
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 412
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 415
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_video_enhancer"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v29

    .line 416
    .local v29, "videoEnhancerStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 417
    const v2, 0x7f0b04eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 418
    const v2, 0x7f0b04ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 419
    const/4 v2, 0x1

    move/from16 v0, v29

    if-ne v0, v2, :cond_12

    const v2, 0x7f0b0c86

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    .line 425
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 424
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 427
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_uhq_upscaler"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v28

    .line 428
    .local v28, "uhqUpscalerStatus":I
    const v2, 0x7f0b0bbd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 429
    .local v27, "uhqSummaryString":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 430
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_13

    .line 431
    const v2, 0x7f0b0cd5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 436
    :cond_a
    :goto_4
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 437
    const v2, 0x7f0b0bbc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 439
    if-eqz v28, :cond_14

    const v2, 0x7f0b0c86

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    move-object/from16 v0, v27

    invoke-direct {v3, v4, v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v27    # "uhqSummaryString":Ljava/lang/String;
    .end local v28    # "uhqUpscalerStatus":I
    .end local v29    # "videoEnhancerStatus":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    .line 446
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 445
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 449
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_launcher"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v12

    .line 450
    .local v12, "gameLauncherStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isRemoveGameLauncher(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 451
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 452
    const v2, 0x7f0b0cd7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 453
    const v2, 0x7f0b0cd8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 454
    const/4 v2, 0x1

    if-ne v12, v2, :cond_15

    const v2, 0x7f0b0c86

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    :goto_6
    const/4 v6, 0x0

    .line 451
    invoke-direct {v3, v4, v5, v2, v6}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    .line 466
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 465
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    .line 468
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pbm_game_tools"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v13

    .line 469
    .local v13, "gameToolsStatus":I
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 470
    const v2, 0x7f0b0cd9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    const v2, 0x7f0b0cda

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 472
    const/4 v2, 0x1

    if-ne v13, v2, :cond_18

    const v2, 0x7f0b0c86

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 469
    :goto_8
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v12    # "gameLauncherStatus":I
    .end local v13    # "gameToolsStatus":I
    :cond_e
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    const v5, 0x7f0401fc

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a022a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 480
    .local v25, "sidePadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0620

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 481
    .local v8, "bottomPadding":I
    const v2, 0x7f11062c

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 482
    .local v9, "buttonView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 483
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 529
    :goto_9
    const v2, 0x7f11062d

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 530
    .local v10, "cancelButtonView":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v10, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 531
    const v2, 0x7f110188

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 533
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0512

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$6;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const v2, 0x102000a

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 549
    .local v15, "listView":Landroid/widget/ListView;
    invoke-virtual {v15, v14}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mModeDetailAdapter:Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$ModeDetailAdapter;

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 551
    const v2, 0x106000d

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 552
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 554
    return-object v30

    .line 296
    .end local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    .end local v8    # "bottomPadding":I
    .end local v9    # "buttonView":Landroid/view/View;
    .end local v10    # "cancelButtonView":Landroid/view/View;
    .end local v15    # "listView":Landroid/widget/ListView;
    .end local v16    # "maxBrightnessStatus":I
    .end local v19    # "percent":I
    .end local v25    # "sidePadding":I
    .end local v26    # "summaryText":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 297
    const v2, 0x7f0b0cc4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "summaryText":Ljava/lang/String;
    goto/16 :goto_0

    .line 299
    .end local v26    # "summaryText":Ljava/lang/String;
    :cond_10
    const v2, 0x7f0b0cc0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "summaryText":Ljava/lang/String;
    goto/16 :goto_0

    .line 364
    .restart local v7    # "detailedItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;>;"
    .restart local v16    # "maxBrightnessStatus":I
    .restart local v19    # "percent":I
    :cond_11
    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 381
    .restart local v22    # "resolutionStatus":I
    :pswitch_0
    const v2, 0x7f0b06de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 384
    .end local v23    # "resolutionStr":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0b06df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "resolutionStr":Ljava/lang/String;
    goto/16 :goto_2

    .line 419
    .end local v22    # "resolutionStatus":I
    .end local v23    # "resolutionStr":Ljava/lang/String;
    .restart local v29    # "videoEnhancerStatus":I
    :cond_12
    const v2, 0x7f0b0c87

    goto/16 :goto_3

    .line 432
    .restart local v27    # "uhqSummaryString":Ljava/lang/String;
    .restart local v28    # "uhqUpscalerStatus":I
    :cond_13
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_a

    .line 433
    const v2, 0x7f0b0cd6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_4

    .line 439
    :cond_14
    const v2, 0x7f0b0c87

    goto/16 :goto_5

    .line 454
    .end local v27    # "uhqSummaryString":Ljava/lang/String;
    .end local v28    # "uhqUpscalerStatus":I
    .end local v29    # "videoEnhancerStatus":I
    .restart local v12    # "gameLauncherStatus":I
    :cond_15
    const v2, 0x7f0b0c87

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 457
    :cond_16
    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;

    .line 458
    const v2, 0x7f0b0cd7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 459
    const v2, 0x7f0b0cd8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    const/4 v2, 0x1

    if-ne v12, v2, :cond_17

    const v2, 0x7f0b0c86

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 457
    :goto_b
    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 460
    :cond_17
    const v2, 0x7f0b0c87

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 472
    .restart local v13    # "gameToolsStatus":I
    :cond_18
    const v2, 0x7f0b0c87

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_8

    .line 485
    .end local v12    # "gameLauncherStatus":I
    .end local v13    # "gameToolsStatus":I
    .restart local v8    # "bottomPadding":I
    .restart local v9    # "buttonView":Landroid/view/View;
    .restart local v25    # "sidePadding":I
    :cond_19
    const/4 v2, 0x0

    move/from16 v0, v25

    move/from16 v1, v25

    invoke-virtual {v9, v0, v2, v1, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 487
    const v2, 0x7f110188

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/widget/RoundButtonView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b0511

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->changeBgModeForPSM(I)V

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApply:Lcom/samsung/android/settings/widget/RoundButtonView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 536
    .restart local v10    # "cancelButtonView":Landroid/view/View;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancel:Lcom/samsung/android/settings/widget/RoundButtonView;

    const v3, 0x7f0b13e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/RoundButtonView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 196
    const-string/jumbo v2, "fromWhere"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    .line 197
    const-string/jumbo v2, "boost_mode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 198
    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    const-string/jumbo v3, "Performance mode off"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 201
    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f0b11f1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0cb9

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 208
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 209
    return-void

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {p0, v5, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 206
    invoke-static {p0, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 211
    :cond_1
    const-string/jumbo v2, "boost_mode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    .line 212
    const-string/jumbo v2, "BoostModeChangeDialogActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current Performance mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    if-ne v2, v6, :cond_3

    .line 215
    const-string/jumbo v2, "GameModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0481

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    .line 237
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 238
    .local v1, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 239
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->createView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 240
    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;)V

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setupAlert()V

    .line 193
    return-void

    .line 220
    .end local v1    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 221
    const-string/jumbo v2, "EntertainmentModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0476

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0477

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0478

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0479

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    goto :goto_1

    .line 227
    :cond_4
    const-string/jumbo v2, "HighPerformanceModePopupView"

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomizeEventId:I

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mApplyEventId:I

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f047d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCancelEventId:I

    goto/16 :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 187
    const v0, 0x7f05003b

    const v1, 0x7f050030

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->overridePendingTransition(II)V

    .line 184
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 631
    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult for GAME MODE requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 633
    const-string/jumbo v0, "BoostModeChangeDialogActivity"

    const-string/jumbo v1, "onActivityResult for GAME MODE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setGLbyUs:Z

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;)V

    .line 642
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 630
    return-void

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    .line 639
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 254
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 256
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 257
    const v5, 0x7f0401f8

    .line 256
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 258
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 259
    const v5, 0x7f0401fe

    .line 258
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 262
    .local v1, "headerView":Landroid/view/View;
    const v4, 0x7f11064a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 263
    .local v2, "maximumPreview":Landroid/widget/ImageView;
    const v4, 0x7f11062b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 264
    .local v0, "dividerView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 265
    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBoostMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 266
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    const v5, 0x7f020651

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 253
    :goto_1
    return-void

    .line 269
    :cond_1
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 276
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mCustomButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iput-object p0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 130
    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 118
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 172
    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mAD:Landroid/app/AlertDialog;

    .line 168
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->initDialog()V

    .line 177
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 558
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mBixbyCurrentStateId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    .line 156
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0b11f1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b0cb9

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mScreenId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method
