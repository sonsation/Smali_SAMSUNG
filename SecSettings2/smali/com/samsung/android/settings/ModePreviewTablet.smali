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

.method static synthetic -wrap0(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    .line 69
    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 71
    iput v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 75
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$1;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    .line 85
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceList:Ljava/util/ArrayList;

    .line 86
    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorBalanceListAdapter:Lcom/samsung/android/settings/ModePreviewTablet$ColorBalanceListAdapter;

    .line 424
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$2;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 431
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$3;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 438
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$4;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 445
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/ModePreviewTablet$5;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 57
    return-void
.end method

.method private getDBValueByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 259
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

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 244
    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    .line 246
    :cond_0
    const/4 v0, 0x0

    .line 250
    .local v0, "dbvalue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 252
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

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 467
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isEnabled":Z
    :cond_1
    move v0, v1

    .line 463
    goto :goto_0
.end method

.method private static setPreferenceEnable(Landroid/view/View;Z)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 471
    const v2, 0x7f1100e5

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 472
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f1101da

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    .local v0, "summary":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 474
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 475
    :cond_0
    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    :cond_1
    return-void
.end method

.method private showBluelightfilterDialog()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 364
    new-instance v0, Lcom/samsung/android/settings/ModePreviewTablet$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/ModePreviewTablet$6;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 377
    .local v0, "cancel":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/samsung/android/settings/ModePreviewTablet$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/ModePreviewTablet$7;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 399
    .local v3, "turnOff":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/ModePreviewTablet$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/ModePreviewTablet$8;-><init>(Lcom/samsung/android/settings/ModePreviewTablet;)V

    .line 413
    .local v1, "cancelDlg":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 415
    const v5, 0x7f0b05a1

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    .line 416
    const v7, 0x7f0b05b6

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 415
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 417
    const v5, 0x7f0b14b7

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 418
    const v5, 0x7f0b14b6

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 413
    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 421
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 363
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 222
    iput-boolean v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getIndexByDBValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    .line 225
    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 226
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

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 229
    iget v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 237
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

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iget-boolean v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v2, :cond_1

    .line 329
    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 330
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

    .line 331
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    iget v4, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-nez v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 336
    .end local v0    # "dbvalue":I
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 326
    return-void
.end method

.method public getScreenOrientation()I
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 213
    .local v0, "getOrient":Landroid/view/Display;
    const/4 v1, 0x0

    .line 214
    .local v1, "orientation":I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x3

    .line 218
    :goto_0
    return v1

    .line 215
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 320
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    .line 319
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mDNIe"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 93
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 110
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b05de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b05dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b05df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b05e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "4"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v2, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewValueList:Ljava/util/ArrayList;

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Lcom/samsung/android/settings/ModePreviewAdapter;

    sget-object v3, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v5, v5, v3}, Lcom/samsung/android/settings/ModePreviewAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    .line 159
    :cond_0
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 163
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 164
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04018d

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 165
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 166
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    const v2, 0x7f0b107a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 168
    const v2, 0x7f0b14b6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 170
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f1104b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    .line 172
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f110252

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    .line 173
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mModePreviewAdapter:Lcom/samsung/android/settings/ModePreviewAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->setupAlert()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateState()V

    .line 199
    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mCurrentSelection:I

    iput v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getScreenOrientation()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 201
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 202
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    const v3, 0x7f0a0409

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 208
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 89
    return-void
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

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "blue_light_filter"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 293
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 294
    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 296
    .local v2, "isDiff":Z
    :goto_2
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->showBluelightfilterDialog()V

    .line 302
    :cond_1
    if-eqz v1, :cond_5

    .line 303
    return-void

    .line 292
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isDiff":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 294
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

    .line 305
    .restart local v2    # "isDiff":Z
    :cond_5
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/ModePreviewTablet;->getDBValueByIndex(I)I

    move-result v0

    .line 306
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

    .line 307
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v5, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 308
    if-nez p3, :cond_6

    .line 309
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    if-nez p3, :cond_7

    :goto_4
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    return-void

    .line 311
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 313
    goto :goto_4
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 278
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 353
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 354
    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    .line 355
    .local v1, "selectMode":I
    const-string/jumbo v2, "MODE_PREVIEW_POSITION"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 356
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

    .line 357
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

    .line 358
    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_0

    .line 359
    iput v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    .line 352
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_mode_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mScreenModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 342
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

    .line 343
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 344
    iget-boolean v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mIsPositivePressed:Z

    if-nez v1, :cond_0

    .line 345
    iget v1, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    if-eq v0, v1, :cond_0

    .line 346
    const-string/jumbo v1, "MODE_PREVIEW_POSITION"

    iget v2, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mOldSelection:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 340
    :cond_0
    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/samsung/android/settings/ModePreviewTablet;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->setPreferenceEnable(Landroid/view/View;Z)V

    .line 452
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet;->mListViewColorBalance:Landroid/widget/ListView;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/ModePreviewTablet;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method
