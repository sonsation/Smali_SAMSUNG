.class public Lcom/samsung/android/settings/NewModePreview;
.super Lcom/android/settings/InstrumentedActivity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/NewModePreview$10;,
        Lcom/samsung/android/settings/NewModePreview$11;,
        Lcom/samsung/android/settings/NewModePreview$12;,
        Lcom/samsung/android/settings/NewModePreview$13;,
        Lcom/samsung/android/settings/NewModePreview$14;,
        Lcom/samsung/android/settings/NewModePreview$15;,
        Lcom/samsung/android/settings/NewModePreview$16;,
        Lcom/samsung/android/settings/NewModePreview$1;,
        Lcom/samsung/android/settings/NewModePreview$2;,
        Lcom/samsung/android/settings/NewModePreview$3;,
        Lcom/samsung/android/settings/NewModePreview$4;,
        Lcom/samsung/android/settings/NewModePreview$5;,
        Lcom/samsung/android/settings/NewModePreview$6;,
        Lcom/samsung/android/settings/NewModePreview$7;,
        Lcom/samsung/android/settings/NewModePreview$8;,
        Lcom/samsung/android/settings/NewModePreview$9;,
        Lcom/samsung/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static sColorBalanceBlue:I

.field private static sColorBalanceGreen:I

.field private static sColorBalancePreset:I

.field private static sColorBalanceRed:I

.field private static sPackageName:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field mBluelightFilterDialog:Landroid/app/AlertDialog;

.field private mCheckboxCustom:Landroid/widget/CheckedTextView;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCustomSeekBarBlue:Landroid/widget/SeekBar;

.field private final mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarGreen:Landroid/widget/SeekBar;

.field private final mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mCustomSeekBarRed:Landroid/widget/SeekBar;

.field private final mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mDTBlueObserver:Landroid/database/ContentObserver;

.field private final mDTGreenObserver:Landroid/database/ContentObserver;

.field private final mDTRedObserver:Landroid/database/ContentObserver;

.field mDisplayColourFooterView:Landroid/view/View;

.field private mEdgeColorBalance:Landroid/widget/LinearLayout;

.field private mEdgeColorBalanceSubText:Landroid/widget/TextView;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mIsCustomEdgeBalanceSupported:Z

.field private mIsCustomEnable:Z

.field private mIsFocusableBlue:Z

.field private mIsFocusableGreen:Z

.field private mIsFocusableRed:Z

.field private mListView:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mPocBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get10()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get12()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceBlue:I

    return v0
.end method

.method static synthetic -get13()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceGreen:I

    return v0
.end method

.method static synthetic -get14()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalancePreset:I

    return v0
.end method

.method static synthetic -get15()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceRed:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/NewModePreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/NewModePreview;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/NewModePreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    return p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceBlue:I

    return p0
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceGreen:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalancePreset:I

    return p0
.end method

.method static synthetic -set7(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/NewModePreview;->sColorBalanceRed:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->changeCustomCheckboxState()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->startEdgeColorBalance()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "com.samsung.everglades.video"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "tv.peel.samsung.app"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "tv.peel.smartremote"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "com.sec.readershub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "com.google.android.apps.books"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 126
    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->sPackageName:[Ljava/lang/String;

    .line 547
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/NewModePreview$5;-><init>()V

    .line 546
    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 107
    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableRed:Z

    .line 108
    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableGreen:Z

    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/settings/NewModePreview;->mIsFocusableBlue:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    .line 117
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 118
    iput v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    .line 122
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 138
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 140
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 517
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$1;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    .line 525
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$2;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    .line 532
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$3;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    .line 539
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$4;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    .line 596
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$6;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 1200
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$7;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 1209
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$8;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 1218
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$9;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 1227
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$10;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1239
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$11;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1266
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$12;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1278
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$13;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1304
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$14;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1316
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$15;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$15;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1441
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$16;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    return-void
.end method

.method private changeCustomCheckboxState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1143
    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    if-eqz v3, :cond_0

    .line 1144
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_custom"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1145
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1146
    iput-boolean v6, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    .line 1148
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1149
    const-string/jumbo v4, "sec_display_temperature_red"

    .line 1148
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1150
    .local v2, "red":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1151
    const-string/jumbo v4, "sec_display_temperature_green"

    .line 1150
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1152
    .local v1, "green":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1153
    const-string/jumbo v4, "sec_display_temperature_blue"

    .line 1152
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1154
    .local v0, "blue":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1155
    const-string/jumbo v4, "sec_display_temperature_red_temp"

    .line 1154
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1156
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1157
    const-string/jumbo v4, "sec_display_temperature_green_temp"

    .line 1156
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1158
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1159
    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    .line 1158
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1160
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1161
    const-string/jumbo v4, "sec_display_temperature_red"

    .line 1160
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1162
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1163
    const-string/jumbo v4, "sec_display_temperature_green"

    .line 1162
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1164
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1165
    const-string/jumbo v4, "sec_display_temperature_blue"

    .line 1164
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1166
    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Custom off (keep) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    .line 1142
    :goto_0
    return-void

    .line 1170
    .end local v0    # "blue":I
    .end local v1    # "green":I
    .end local v2    # "red":I
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sec_display_temperature_custom"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1171
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1172
    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    .line 1174
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1175
    const-string/jumbo v4, "sec_display_temperature_red_temp"

    .line 1174
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1176
    .restart local v2    # "red":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1177
    const-string/jumbo v4, "sec_display_temperature_green_temp"

    .line 1176
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1178
    .restart local v1    # "green":I
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1179
    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    .line 1178
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1180
    .restart local v0    # "blue":I
    if-ge v2, v5, :cond_1

    if-ge v1, v5, :cond_1

    if-ge v0, v5, :cond_1

    .line 1181
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1182
    const-string/jumbo v4, "sec_display_temperature_red"

    .line 1181
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1183
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1184
    const-string/jumbo v4, "sec_display_temperature_green"

    .line 1183
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1185
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1186
    const-string/jumbo v4, "sec_display_temperature_blue"

    .line 1185
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1188
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1189
    const-string/jumbo v4, "sec_display_temperature_red_temp"

    .line 1188
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1190
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1191
    const-string/jumbo v4, "sec_display_temperature_green_temp"

    .line 1190
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1192
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1193
    const-string/jumbo v4, "sec_display_temperature_blue_temp"

    .line 1192
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1194
    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Custom on(restore) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    goto/16 :goto_0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1343
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1344
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private initColorBalance()V
    .locals 12

    .prologue
    const v11, 0x7f0d0150

    const/16 v10, 0xb

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1020
    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->initColorBalanceCustomDB()V

    .line 1021
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 1022
    return-void

    .line 1024
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f110363

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 1025
    .local v3, "seekBar":Lcom/samsung/android/settings/widget/IntervalSeekBar;
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eq v3, v5, :cond_1

    .line 1026
    iput-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 1027
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v8, Lcom/samsung/android/settings/NewModePreview$20;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/NewModePreview$20;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1047
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_preset_index"

    const/4 v9, 0x2

    invoke-static {v5, v8, v9, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1048
    .local v1, "presetIndex":I
    const-string/jumbo v5, "ModePreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "current preset : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    rsub-int/lit8 v8, v1, 0x4

    invoke-virtual {v5, v8}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 1052
    .end local v1    # "presetIndex":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 1053
    const v8, 0x7f11036a

    .line 1052
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    .line 1054
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    if-eqz v5, :cond_2

    .line 1055
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1056
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1057
    const/high16 v5, -0x10000

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1058
    .local v4, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1060
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1061
    const-string/jumbo v8, "sec_display_temperature_red"

    .line 1060
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    .line 1063
    .local v2, "progress":I
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1064
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1065
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1066
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRedSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1067
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1070
    .end local v2    # "progress":I
    .end local v4    # "tint_list":Landroid/content/res/ColorStateList;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 1071
    const v8, 0x7f11036d

    .line 1070
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    .line 1072
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 1073
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0151

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1074
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0151

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1075
    const v5, -0xff0100

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1076
    .restart local v4    # "tint_list":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1078
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1079
    const-string/jumbo v8, "sec_display_temperature_green"

    .line 1078
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    .line 1081
    .restart local v2    # "progress":I
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1082
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1083
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1084
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreenSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1085
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1088
    .end local v2    # "progress":I
    .end local v4    # "tint_list":Landroid/content/res/ColorStateList;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 1089
    const v8, 0x7f110370

    .line 1088
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    .line 1090
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    if-eqz v5, :cond_4

    .line 1091
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0152

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1092
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0152

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 1093
    const v5, -0xffff01

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 1094
    .restart local v4    # "tint_list":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 1096
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1097
    const-string/jumbo v8, "sec_display_temperature_blue"

    .line 1096
    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0xb

    .line 1099
    .restart local v2    # "progress":I
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 1100
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v10}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1101
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1102
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlueSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1103
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v5, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1106
    .end local v2    # "progress":I
    .end local v4    # "tint_list":Landroid/content/res/ColorStateList;
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 1107
    const v8, 0x7f110371

    .line 1106
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    .line 1108
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v8, 0x7f110373

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    .line 1109
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 1110
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalanceSubText:Landroid/widget/TextView;

    const v8, 0x7f0b0664

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 1113
    const v8, 0x7f110365

    .line 1112
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckedTextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    .line 1114
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    if-eqz v5, :cond_6

    .line 1115
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "sec_display_temperature_custom"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    .line 1116
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    iget-boolean v7, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1117
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v5, v6}, Landroid/widget/CheckedTextView;->setClickable(Z)V

    .line 1118
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    new-instance v7, Lcom/samsung/android/settings/NewModePreview$21;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/NewModePreview$21;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    .line 1127
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1128
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    new-instance v6, Lcom/samsung/android/settings/NewModePreview$22;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/NewModePreview$22;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1136
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x7f110367

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1137
    .local v0, "customColorArea":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_8

    .line 1138
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1019
    :cond_8
    return-void

    .end local v0    # "customColorArea":Landroid/widget/LinearLayout;
    :cond_9
    move v5, v7

    .line 1115
    goto :goto_0
.end method

.method private initColorBalanceCustomDB()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1349
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1350
    const-string/jumbo v5, "sec_display_temperature_custom"

    .line 1349
    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1351
    .local v1, "colorBalanceCustom":I
    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    if-eq v1, v8, :cond_0

    .line 1353
    return-void

    .line 1355
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1356
    const-string/jumbo v5, "sec_display_temperature_red"

    .line 1355
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1357
    .local v3, "red":I
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1358
    const-string/jumbo v5, "sec_display_temperature_green"

    .line 1357
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1359
    .local v2, "green":I
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1360
    const-string/jumbo v5, "sec_display_temperature_blue"

    .line 1359
    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1361
    .local v0, "blue":I
    const-string/jumbo v4, "ModePreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "init DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 1363
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1348
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sec_display_temperature_custom"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    .line 498
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .end local v0    # "isEnabled":Z
    :cond_1
    move v0, v1

    .line 494
    goto :goto_0
.end method

.method private setColorBalanceCustomItemsVisible(Landroid/view/View;Z)V
    .locals 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1396
    const v3, 0x7f110366

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1398
    .local v0, "customArea":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 1399
    return-void

    .line 1401
    :cond_0
    if-eqz p2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1403
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1404
    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    if-eqz v3, :cond_3

    move v2, p2

    .line 1405
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1406
    const v3, 0x7f110364

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1407
    .local v1, "divider2":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1408
    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    .end local v1    # "divider2":Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v3, v5

    .line 1401
    goto :goto_0

    .line 1404
    :cond_3
    const/4 v2, 0x0

    .local v2, "showEdgeColorBalance":Z
    goto :goto_1

    .end local v2    # "showEdgeColorBalance":Z
    :cond_4
    move v3, v5

    .line 1405
    goto :goto_2

    .restart local v1    # "divider2":Landroid/view/View;
    :cond_5
    move v4, v5

    .line 1408
    goto :goto_3
.end method

.method private setPreferenceEnable(Landroid/view/View;Z)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 251
    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, "headline":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 253
    .local v3, "subText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    :cond_0
    if-eqz v3, :cond_1

    .line 256
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    :cond_1
    const v4, 0x7f110361

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 259
    .local v1, "presetCool":Landroid/widget/TextView;
    const v4, 0x7f110362

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 260
    .local v2, "presetWarm":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    :cond_2
    if-eqz v2, :cond_3

    .line 263
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v4, :cond_4

    .line 265
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mPresetSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v4, p2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 266
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    if-eqz v4, :cond_5

    .line 267
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, p2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 268
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    .line 269
    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mEdgeColorBalance:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 270
    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v4, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->updateColorBalanceCustomItems(Z)V

    .line 250
    return-void

    .line 270
    :cond_7
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showBluelightfilterDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 428
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    return-void

    .line 430
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 431
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$17;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 444
    .local v0, "cancel":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/samsung/android/settings/NewModePreview$18;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/NewModePreview$18;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 467
    .local v2, "turnOff":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/NewModePreview$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/NewModePreview$19;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 481
    .local v1, "cancelDlg":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 483
    const v4, 0x7f0b06d7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 484
    const v4, 0x7f0b06d8

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 485
    const v6, 0x7f0b06ed

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 484
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 486
    const v4, 0x7f0b1865

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 487
    const v4, 0x7f0b1864

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    .line 490
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mBluelightFilterDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 427
    return-void
.end method

.method private showPocBatteryCheckDialog()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1424
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    return-void

    .line 1426
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 1427
    new-instance v0, Lcom/samsung/android/settings/NewModePreview$23;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$23;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    .line 1433
    .local v0, "okListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1434
    const v2, 0x7f0b0667

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1435
    const v2, 0x7f0b0668

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1436
    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1435
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1437
    const v2, 0x7f0b0512

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 1433
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 1438
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1423
    return-void
.end method

.method private startEdgeColorBalance()V
    .locals 3

    .prologue
    .line 1414
    iget v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryLevel:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 1415
    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showPocBatteryCheckDialog()V

    .line 1413
    :goto_0
    return-void

    .line 1417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1418
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.POC_BALANCE_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/NewModePreview;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateColorBalanceCustomItems(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1369
    if-eqz p1, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1371
    const-string/jumbo v1, "sec_display_temperature_red"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    .line 1370
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1372
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1373
    const-string/jumbo v1, "sec_display_temperature_green"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    .line 1372
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1374
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1375
    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    .line 1374
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1377
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1378
    const-string/jumbo v2, "sec_display_temperature_red"

    .line 1377
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1380
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1381
    const-string/jumbo v2, "sec_display_temperature_green"

    .line 1380
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1383
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCustomSeekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1384
    const-string/jumbo v2, "sec_display_temperature_blue"

    .line 1383
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1392
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/NewModePreview;->setColorBalanceCustomItemsVisible(Landroid/view/View;Z)V

    .line 1368
    return-void

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1388
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1389
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v5, 0x7f0401b9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->setContentView(I)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mDNIe"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 151
    new-array v5, v11, [Ljava/lang/String;

    sput-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    .line 152
    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0715

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 153
    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0714

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 154
    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0717

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 155
    sget-object v5, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0718

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 179
    const v5, 0x7f110597

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    .line 180
    const v5, 0x7f110269

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    .line 198
    new-instance v5, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    sget-object v6, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const v7, 0x7f040185

    invoke-direct {v5, p0, v7, v6}, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    .line 200
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_automatic_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "isChecked":I
    const/4 v3, 0x0

    .line 205
    .local v3, "selectedBtn":I
    if-ne v1, v8, :cond_0

    .line 206
    const/4 v3, 0x0

    .line 207
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 214
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 215
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 216
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    .line 219
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportPocSettings(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    .line 220
    const-string/jumbo v5, "ModePreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate():  mIsCustomEdgeBalanceSupported="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEdgeBalanceSupported:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 223
    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const v7, 0x7f0400eb

    .line 222
    invoke-virtual {v5, v7, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    .line 224
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x7f020498

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x1020014

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 227
    .local v0, "headline":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v6, 0x1020015

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 228
    .local v4, "subText":Landroid/widget/TextView;
    const v5, 0x7f0b065c

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v2, "sb":Ljava/lang/StringBuilder;
    const v5, 0x7f0b065d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v5, "\n\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const v5, 0x7f0b0661

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const v5, 0x7f0b0662

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 239
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->initColorBalance()V

    .line 247
    new-instance v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 143
    return-void

    .line 209
    .end local v0    # "headline":Landroid/widget/TextView;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "subText":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_mode_setting"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 210
    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    .line 403
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
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 343
    .local v1, "isBlueLightFilterOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 344
    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    .line 346
    .local v2, "isDiff":Z
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 347
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p3, v3, :cond_5

    .line 348
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 349
    const-string/jumbo v3, "ModePreview"

    const-string/jumbo v4, "onItemClick :  footerview"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    .line 352
    :cond_1
    return-void

    .line 342
    .end local v1    # "isBlueLightFilterOn":Z
    .end local v2    # "isDiff":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isBlueLightFilterOn":Z
    goto :goto_0

    .line 344
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

    .line 356
    .restart local v2    # "isDiff":Z
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 357
    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    .line 360
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->updateTemperatureSettingsState()V

    .line 362
    if-eqz v1, :cond_7

    .line 363
    return-void

    .line 366
    :cond_7
    if-nez p3, :cond_8

    .line 367
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    const/4 v0, 0x4

    .line 380
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 382
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

    .line 383
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 340
    return-void

    .line 373
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 377
    add-int/lit8 v0, p3, -0x1

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 388
    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 391
    const/4 v0, 0x4

    .line 396
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 399
    .end local v0    # "idx":I
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 393
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

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, "adaptiveValue":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 283
    .local v1, "currentValue":I
    if-ne v0, v5, :cond_0

    .line 284
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTRedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTGreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mDTBlueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "ScreenMode"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 309
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 279
    return-void

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0

    .line 301
    :catch_0
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    const-string/jumbo v3, "ModePreview"

    const-string/jumbo v4, "unregisterReceiver exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->finish()V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b085a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->finish()V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 323
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 313
    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "sec_display_temperature_custom"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    .line 503
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mCheckboxCustom:Landroid/widget/CheckedTextView;

    iget-boolean v3, p0, Lcom/samsung/android/settings/NewModePreview;->mIsCustomEnable:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    .line 501
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 502
    goto :goto_0

    :cond_2
    move v2, v1

    .line 506
    goto :goto_1

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_2
.end method
