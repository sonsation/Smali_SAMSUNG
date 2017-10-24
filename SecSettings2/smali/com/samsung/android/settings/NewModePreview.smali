.class public Lcom/samsung/android/settings/NewModePreview;
.super Lcom/android/settings/InstrumentedActivity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/NewModePreview$1;,
        Lcom/samsung/android/settings/NewModePreview$2;,
        Lcom/samsung/android/settings/NewModePreview$3;,
        Lcom/samsung/android/settings/NewModePreview$4;,
        Lcom/samsung/android/settings/NewModePreview$5;,
        Lcom/samsung/android/settings/NewModePreview$6;,
        Lcom/samsung/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static sPackageName:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field mBluelightFilterDialog:Landroid/app/AlertDialog;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mDisplayColourFooterView:Landroid/view/View;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mListView:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 87
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "com.samsung.everglades.video"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "tv.peel.samsung.app"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "tv.peel.smartremote"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "com.sec.readershub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "com.google.android.apps.books"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 86
    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->sPackageName:[Ljava/lang/String;

    .line 431
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/NewModePreview$5;-><init>()V

    .line 430
    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 401
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$1;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 409
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$2;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 416
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$3;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 423
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$4;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 459
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$6;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 68
    return-void
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 388
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isEnabled":Z
    :cond_1
    move v0, v1

    .line 384
    goto :goto_0
.end method

.method private static setPreferenceEnable(Landroid/view/View;Z)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "enable"    # Z

    .prologue
    .line 187
    const v2, 0x1020014

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 188
    .local v0, "headline":Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, "subText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 186
    return-void
.end method

.method private showBluelightfilterDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 320
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    return-void

    .line 322
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 323
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$7;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 336
    .local v0, "cancel":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/samsung/android/settings/NewModePreview$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/NewModePreview$8;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 358
    .local v2, "turnOff":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/NewModePreview$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/NewModePreview$9;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 372
    .local v1, "cancelDlg":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 374
    const v4, 0x7f0b05a1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 375
    const v6, 0x7f0b05b6

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 374
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 376
    const v4, 0x7f0b14b7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 377
    const v4, 0x7f0b14b6

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 380
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 319
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v1, 0x7f040197

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 111
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    .line 112
    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 113
    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 114
    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 115
    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 126
    const v1, 0x7f1104b6

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    .line 127
    const v1, 0x7f110252

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 130
    .local v9, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a04c4

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 131
    const v2, 0x7f0a04ba

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 130
    add-int/2addr v1, v2

    .line 132
    const v2, 0x7f0a04cb

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 130
    add-int v4, v1, v2

    .line 133
    .local v4, "divider_inset_size":I
    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 139
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_0
    new-instance v1, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    sget-object v2, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const v3, 0x7f040168

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 148
    .local v8, "isChecked":I
    const/4 v10, 0x0

    .line 150
    .local v10, "selectedBtn":I
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1

    .line 151
    const/4 v10, 0x0

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v10, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 182
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    .line 103
    return-void

    .line 135
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v8    # "isChecked":I
    .end local v10    # "selectedBtn":I
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 136
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 153
    .restart local v8    # "isChecked":I
    .restart local v10    # "selectedBtn":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    .line 295
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 246
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 247
    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 249
    .local v2, "isDiff":Z
    :goto_2
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    .line 255
    :cond_1
    if-eqz v1, :cond_5

    .line 256
    return-void

    .line 245
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isDiff":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 247
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isDiff":Z
    goto :goto_2

    .end local v2    # "isDiff":Z
    :cond_4
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, p3, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_1

    .line 259
    .restart local v2    # "isDiff":Z
    :cond_5
    if-nez p3, :cond_6

    .line 260
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v0, v3, v4

    .line 272
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 274
    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setmDNIeUserMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 243
    return-void

    .line 265
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    add-int/lit8 v0, p3, -0x1

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 280
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 283
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 291
    .end local v0    # "idx":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 285
    .restart local v0    # "idx":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 202
    .local v0, "adaptiveValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "currentValue":I
    if-ne v0, v5, :cond_0

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, "idx":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    .line 208
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 221
    .end local v2    # "idx":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "ScreenMode"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 222
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 199
    return-void

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 228
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 239
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    .line 391
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method
