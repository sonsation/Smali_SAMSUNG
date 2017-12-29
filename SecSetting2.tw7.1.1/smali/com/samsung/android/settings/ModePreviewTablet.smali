.class public Lcom/samsung/android/settings/ModePreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ModePreviewTablet$1;,
        Lcom/samsung/android/settings/ModePreviewTablet$2;,
        Lcom/samsung/android/settings/ModePreviewTablet$3;,
        Lcom/samsung/android/settings/ModePreviewTablet$4;,
        Lcom/samsung/android/settings/ModePreviewTablet$5;,
        Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;,
        Lcom/samsung/android/settings/ModePreviewTablet$ViewHolder;
    }
.end annotation


# static fields
.field public static mModePreviewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mModePreviewValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field public mColorBalanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorBalanceListAdapter:Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

.field mCurrentSelection:I

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPositivePressed:Z

.field private mListView:Landroid/widget/ListView;

.field private mListViewColorBalance:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mOldSelection:I

.field private mScreenModeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ModePreviewTablet;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isTemperatureSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    .line 70
    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 72
    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 76
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$1;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    .line 87
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceListAdapter:Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

    .line 445
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$2;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 452
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$3;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 459
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$4;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 466
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$5;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 58
    return-void
.end method

.method private getDBValueByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getIndexByDBValue()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1

    .line 266
    :cond_0
    const/4 v0, 0x0

    .line 270
    .local v0, "dbvalue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 272
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 490
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isEnabled":Z
    :cond_1
    move v0, v1

    .line 486
    goto :goto_0
.end method

.method private static setPreferenceEnable(Landroid/view/View;Z)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 494
    const v2, 0x7f1100e6

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 495
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f1101ef

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    .local v0, "summary":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 498
    :cond_0
    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 493
    :cond_1
    return-void
.end method

.method private showBluelightfilterDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 384
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ModePreviewTablet$7;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 397
    .local v0, "cancel":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/samsung/android/settings/ModePreviewTablet$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/ModePreviewTablet$8;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 419
    .local v3, "turnOff":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/ModePreviewTablet$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/ModePreviewTablet$9;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 433
    .local v1, "cancelDlg":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 435
    const v5, 0x7f0b06d7

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 436
    const v5, 0x7f0b06d8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 437
    const v7, 0x7f0b06ed

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 436
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 438
    const v5, 0x7f0b1865

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 439
    const v5, 0x7f0b1864

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 433
    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 442
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iput-boolean v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 243
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getIndexByDBValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 245
    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 246
    const-string/jumbo v0, "ModePreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState() positoin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 249
    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_1
    const-string/jumbo v0, "ModePreview"

    const-string/jumbo v1, "updateState() positoin : -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 348
    iget-boolean v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v2, :cond_1

    .line 349
    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 350
    .local v0, "dbvalue":I
    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemMdnieManager.setScreenMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    iget v4, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    .end local v0    # "dbvalue":I
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 346
    return-void
.end method

.method public getScreenOrientation()I
    .locals 4

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 233
    .local v0, "getOrient":Landroid/view/Display;
    const/4 v1, 0x0

    .line 234
    .local v1, "orientation":I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x3

    .line 238
    :goto_0
    return v1

    .line 235
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 340
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 339
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "mDNIe"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 94
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 95
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 111
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0715

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0714

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0717

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0718

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "4"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v1, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/samsung/android/settings/ModePreviewAdapter;

    sget-object v3, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v2, v3}, Lcom/samsung/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    .line 160
    :cond_0
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 162
    iget-object v11, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 164
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b06ed

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0401ab

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 166
    iput-object p0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    iput-object p0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    const v1, 0x7f0b13e7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 169
    const v1, 0x7f0b1864

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 171
    iget-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f110597

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    .line 173
    iget-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f110269

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0553

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 180
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    .line 181
    .local v13, "origConfig":Landroid/content/res/Configuration;
    invoke-virtual {v13}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v12, :cond_1

    .line 183
    .local v12, "isLayoutRtl":Z
    :goto_0
    if-eqz v12, :cond_2

    .line 184
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 188
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->setupAlert()V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    .line 196
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v5, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

    .line 198
    iget-object v10, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    const v8, 0x7f04007b

    move-object v6, p0

    move-object v7, p0

    move v9, v2

    .line 197
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceListAdapter:Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

    .line 199
    iget-object v1, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f110598

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    .line 200
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    new-instance v3, Lcom/samsung/android/settings/ModePreviewTablet$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/ModePreviewTablet$6;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceListAdapter:Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    .line 212
    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 90
    return-void

    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v12    # "isLayoutRtl":Z
    :cond_1
    move v12, v2

    .line 181
    goto :goto_0

    .line 186
    .restart local v12    # "isLayoutRtl":Z
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_1

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "blue_light_filter"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 313
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 314
    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 316
    .local v2, "isDiff":Z
    :goto_2
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->showBluelightfilterDialog()V

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateTemperatureSettingsState()V

    .line 322
    if-eqz v1, :cond_5

    .line 323
    return-void

    .line 312
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isDiff":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 314
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isDiff":Z
    goto :goto_2

    .end local v2    # "isDiff":Z
    :cond_4
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_setting"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v6, p3, -0x1

    if-eq v5, v6, :cond_3

    goto :goto_1

    .line 325
    .restart local v2    # "isDiff":Z
    :cond_5
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 326
    .local v0, "dbvalue":I
    const-string/jumbo v5, "ModePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SemMdnieManager.setScreenMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 328
    if-nez p3, :cond_6

    .line 329
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    if-nez p3, :cond_7

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    return-void

    .line 331
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 333
    goto :goto_4
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 373
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 374
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 375
    .local v1, "selectMode":I
    const-string/jumbo v2, "MODE_PREVIEW_POSITION"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, "restoreMode":I
    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState restoreMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " selectMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRestoreInstanceState mOldSelection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_0

    .line 379
    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 372
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 285
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateTemperatureSettingsState()V

    .line 283
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 362
    .local v0, "selectMode":I
    const-string/jumbo v1, "ModePreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSaveInstanceState position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mOldSelection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 364
    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v1, :cond_0

    .line 365
    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-eq v0, v1, :cond_0

    .line 366
    const-string/jumbo v1, "MODE_PREVIEW_POSITION"

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onWindowFocusChanged(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 221
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getScreenOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 222
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 223
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a049c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 225
    .local v1, "maxWidth":I
    if-le v2, v1, :cond_0

    .line 226
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 218
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "maxWidth":I
    :cond_1
    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->setPreferenceEnable(Landroid/view/View;Z)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method
