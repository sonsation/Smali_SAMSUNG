.class public Lcom/samsung/android/settings/display/FontPreview;
.super Lcom/android/settings/InstrumentedActivity;
.source "FontPreview.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FontPreview$1;,
        Lcom/samsung/android/settings/display/FontPreview$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field private static CHANGE_MODE_FONT_SIZE:I

.field private static CHANGE_MODE_FONT_STYLE:I

.field private static CHANGE_MODE_SCREEN_SIZE:I

.field public static DEBUG:Z

.field private static DENSITY_BASE_PIXEL:[F

.field private static DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

.field public static REBOOT:Z

.field private static persistString:Ljava/lang/String;

.field private static sDisplayFont:I

.field private static sDisplayFontAccessibilitySwitch:I

.field private static sDisplayFontCancel:I

.field private static sDisplayFontDone:I

.field private static sDisplayFontSize:I

.field private static sDisplayFontStyle:I

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixbyCurrentStatesId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingSizeText:Landroid/widget/TextView;

.field private mCharSeqRevisedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mCurrentDensityIndex:I

.field mCurrentFontIndex:I

.field private mDensities:[I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mExtraHugeString:Ljava/lang/String;

.field private mExtraLargeFontIndex:I

.field private mFloatRevisedValueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mFontFloatSize:F

.field private mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

.field private mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mFontSizeStrings:[Ljava/lang/String;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mFontSwitchTextView:Landroid/widget/TextView;

.field private mFontWithDensityDescTextView:Landroid/widget/TextView;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsChangedScreenSizeSeekBar:Z

.field private mIsCheckPlatformSignatures:Z

.field private mIsCheckReleaseSignatures:Z

.field private mIsClickSwitch:Z

.field private mIsEnabledShowBtnBg:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsFromSetupWizard:Z

.field private mIsRunLoadListTask:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviousFont:I

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mResIds_with_grid_app:[I

.field private mResIds_without_grid_app:[I

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSelectedScreenSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mThemeFontTypeface:Landroid/graphics/Typeface;

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FontPreview;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/display/FontPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/display/FontPreview;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/display/FontPreview;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/display/FontPreview;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return v0
.end method

.method static synthetic -get18()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return v0
.end method

.method static synthetic -get19()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/display/FontPreview;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return p0
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FontPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->getFontNameFromUtil(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FontPreview;I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FontPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontPreview()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/FontPreview;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    .line 132
    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    .line 185
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 186
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 187
    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v4

    .line 188
    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v5

    .line 189
    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    aput-object v1, v0, v6

    .line 190
    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v7

    .line 191
    const-string/jumbo v1, "com.monotype.android.font.rosemary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "com.monotype.android.font.applemint"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "com.monotype.android.font.tinkerbell"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "com.monotype.android.font.udrgothic"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "com.monotype.android.font.udmincho"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "com.monotype.android.font.arjpopb"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "com.monotype.android.font.kaiti"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "com.monotype.android.font.shaonv"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "com.monotype.android.font.miao"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 185
    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    .line 238
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    .line 240
    sput v4, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    .line 241
    sput v5, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    .line 242
    sput v7, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    .line 1228
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    .line 98
    return-void

    .line 238
    nop

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const v5, 0x7f040262

    const v4, 0x7f040260

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 103
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 116
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 120
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 121
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 123
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    .line 204
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    .line 205
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 206
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 210
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    .line 211
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 213
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    .line 215
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 228
    filled-new-array {v4, v5}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app:[I

    .line 235
    const v0, 0x7f040263

    .line 232
    filled-new-array {v4, v5, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_with_grid_app:[I

    .line 1593
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    .line 1594
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 1595
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 1596
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 1746
    new-instance v0, Lcom/samsung/android/settings/display/FontPreview$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FontPreview$1;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 98
    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 763
    const/high16 v0, 0x3f800000    # 1.0f

    .line 764
    .local v0, "fontsize":F
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 765
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 769
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 770
    .local v2, "previousFontSize":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 771
    .local v1, "mPreviewTextSize":I
    if-lt v2, v7, :cond_2

    if-ge p1, v7, :cond_2

    .line 772
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 779
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    .line 780
    sput p1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    .line 781
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    .line 762
    return-void

    .line 767
    .end local v1    # "mPreviewTextSize":I
    .end local v2    # "previousFontSize":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 773
    .restart local v1    # "mPreviewTextSize":I
    .restart local v2    # "previousFontSize":I
    :cond_2
    if-ge v2, v7, :cond_3

    if-lt p1, v7, :cond_3

    .line 774
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f947ae1    # 1.16f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 776
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1734
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1735
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private configureActionBar()V
    .locals 3

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    .line 719
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 720
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f04009c

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 721
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110224

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 723
    .local v0, "headerBar":Landroid/widget/LinearLayout;
    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 717
    .end local v0    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "fontWriter"    # Lcom/samsung/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 1467
    .local v3, "err_filecopy":Z
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1473
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "content://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/fonts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1474
    .local v5, "uriFont":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1477
    .local v4, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1484
    .local v4, "isFont":Ljava/io/InputStream;
    invoke-virtual {p1, p2, v4, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    .line 1487
    .local v3, "err_filecopy":Z
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1491
    :goto_0
    return v3

    .line 1468
    .end local v4    # "isFont":Ljava/io/InputStream;
    .end local v5    # "uriFont":Landroid/net/Uri;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v3, "err_filecopy":Z
    :catch_0
    move-exception v1

    .line 1469
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 1478
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v4, "isFont":Ljava/io/InputStream;
    .restart local v5    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 1480
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 1488
    .end local v1    # "e":Ljava/lang/Exception;
    .local v3, "err_filecopy":Z
    .local v4, "isFont":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .local v2, "e1":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private doneFontPreview()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1063
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessiblity_font_switch"

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1067
    :cond_1
    const/4 v0, 0x0

    .line 1068
    .local v0, "changeMode":I
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    if-eq v1, v2, :cond_2

    .line 1069
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v1, :cond_2

    .line 1070
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    or-int/lit8 v0, v1, 0x0

    .line 1073
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    if-eq v1, v2, :cond_3

    .line 1074
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    if-ltz v1, :cond_3

    .line 1075
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    or-int/2addr v0, v1

    .line 1078
    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v1, :cond_4

    .line 1079
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    or-int/2addr v0, v1

    .line 1082
    :cond_4
    if-nez v0, :cond_5

    .line 1083
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    .line 1084
    return-void

    .line 1086
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontStyleOrFontSize(I)V

    .line 1062
    return-void
.end method

.method private doneFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1166
    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    .line 1167
    .local v0, "fontIndex":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1168
    .local v2, "previousIndex":I
    const-string/jumbo v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "KKK onPreferenceChange fontIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1172
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    .line 1173
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    const-string/jumbo v3, "FontPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1165
    :goto_0
    return-void

    .line 1178
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 1179
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    const-string/jumbo v3, "FontPreview"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1185
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1188
    const-string/jumbo v3, "FontPreview"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x0

    .line 1138
    const-string/jumbo v1, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doneFontStyleOrFontSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v0, 0x0

    .line 1140
    .local v0, "isAvailableFont":I
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 1141
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_STYLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1143
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->onOkButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 1146
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1147
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 1148
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontSize()V

    .line 1150
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->writeFontSizePreference(F)V

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->readFontSizePreference()V

    .line 1154
    :cond_1
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1155
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_SCREEN_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    .line 1158
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1159
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1137
    :cond_3
    :goto_1
    return-void

    .line 1143
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 1160
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    goto :goto_1
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1023
    const-string/jumbo v0, "default"

    .line 1024
    .local v0, "fontName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "selectedFont":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1026
    .local v2, "temp":[Ljava/lang/String;
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1027
    .local v2, "temp":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    .line 1028
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 1030
    :cond_0
    return-object v0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1711
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1713
    .local v0, "mSelectedFontSize":I
    const/4 v1, 0x0

    .line 1714
    .local v1, "mode":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1716
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1717
    .local v3, "selectedFont":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1718
    .local v4, "temp":[Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1719
    .local v4, "temp":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 1720
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    .line 1725
    :cond_0
    const-string/jumbo v5, "monotype"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "default"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1726
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b05d6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "selectedFont":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1730
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private getFontNameFromUtil(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 550
    if-eqz p1, :cond_1

    .line 552
    const v3, 0x7f1103c3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 553
    .local v1, "layoutLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 557
    const v3, 0x7f1103c6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 558
    .local v2, "switchDividerView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 560
    const v3, 0x7f1103c5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    .line 561
    const v3, 0x7f1103c4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    .line 562
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 563
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 564
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 568
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 569
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 570
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .end local v2    # "switchDividerView":Landroid/view/View;
    :cond_1
    return-void

    .restart local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v1    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .restart local v2    # "switchDividerView":Landroid/view/View;
    :cond_2
    move v3, v5

    .line 569
    goto :goto_0
.end method

.method private setDim(ZZ)V
    .locals 4
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    const v3, 0x7f0d0165

    const v2, 0x7f0205a1

    .line 575
    if-eqz p1, :cond_5

    .line 576
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 580
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f020581

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 581
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 596
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    if-eqz v0, :cond_3

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animationStart(Z)V

    .line 600
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_4

    .line 603
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    .line 574
    :cond_4
    return-void

    .line 586
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    .line 587
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 588
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f020580

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 626
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 627
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 630
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 636
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    .line 637
    .local v6, "currentThemeFontPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v6    # "currentThemeFontPath":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    .line 649
    const v0, 0x7f1103c9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 650
    .local v9, "fontScrollView":Landroid/widget/ScrollView;
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 651
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$7;

    invoke-direct {v2, p0, v9}, Lcom/samsung/android/settings/display/FontPreview$7;-><init>(Lcom/samsung/android/settings/display/FontPreview;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 682
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->loadPreferences()V

    .line 684
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setSelectedFontStyle()V

    .line 685
    if-eqz p1, :cond_2

    .line 686
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 688
    .local v3, "userSelectedStyleIndex":I
    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 690
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 625
    .end local v3    # "userSelectedStyleIndex":I
    :cond_2
    return-void

    .line 642
    .end local v9    # "fontScrollView":Landroid/widget/ScrollView;
    :catch_0
    move-exception v7

    .line 643
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v6, 0x0

    .line 494
    const v3, 0x7f040115

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setContentView(I)V

    .line 495
    const v3, 0x7f1103c0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 496
    const v3, 0x7f1103c2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 498
    const v3, 0x7f1103d1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 499
    const v3, 0x7f1103d0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 500
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const v5, 0x7f0205a1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 502
    .local v2, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 503
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v4, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 504
    const v3, 0x7f1103c8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    .line 505
    const v3, 0x7f1103d2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    .line 507
    const v3, 0x7f1103cf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    .line 508
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/FontPreview$6;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 520
    const/high16 v3, 0x10a0000

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 521
    .local v0, "in":Landroid/view/animation/Animation;
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 522
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 523
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 525
    if-eqz p1, :cond_0

    .line 526
    const v3, 0x7f1103ce

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMinTextView:Landroid/widget/TextView;

    .line 527
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    .line 528
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0203

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    .line 529
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 531
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-nez v3, :cond_1

    .line 532
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 545
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    return-void

    .line 535
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b05e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 537
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v3, :cond_0

    .line 540
    const/4 v3, 0x1

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 696
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 697
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 698
    .local v0, "adapterCount":I
    const/4 v5, 0x0

    .line 699
    .local v5, "totalHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 700
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v2, v9, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 701
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 702
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    .end local v3    # "listItem":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_size"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 706
    .local v1, "fontSize":I
    if-nez v1, :cond_1

    .line 707
    add-int/lit8 v5, v5, 0x5

    .line 710
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 711
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 712
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 695
    .end local v0    # "adapterCount":I
    .end local v1    # "fontSize":I
    .end local v2    # "i":I
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "totalHeight":I
    :cond_2
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 1035
    return-void

    .line 1037
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v6

    .line 1038
    .local v6, "selectedFont":Ljava/lang/String;
    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1042
    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : Current Theme Font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1051
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1033
    return-void

    .line 1044
    :cond_1
    const-string/jumbo v0, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1048
    const-string/jumbo v0, "FontPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelectedFontStyle : selectedFont index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private update3StepFontsizeList()V
    .locals 7

    .prologue
    .line 729
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 731
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c009e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "fontSizeNames":[Ljava/lang/String;
    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeStrings:[Ljava/lang/String;

    .line 735
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 737
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 740
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 741
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    .line 727
    return-void
.end method

.method private update7StepFontsizeList()V
    .locals 6

    .prologue
    .line 748
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 750
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v2, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 755
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 756
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 759
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    .line 747
    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1544
    move-object v1, p1

    .line 1546
    .local v1, "deletePackageName":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1547
    const v3, 0x7f0b05d5

    .line 1546
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1548
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/FontPreview$11;-><init>(Lcom/samsung/android/settings/display/FontPreview;Ljava/lang/String;)V

    const v4, 0x7f0b1715

    .line 1546
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1565
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/FontPreview$12;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    const/high16 v4, 0x1040000

    .line 1546
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1574
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$13;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1583
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1543
    return-void
.end method

.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1740
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1742
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1738
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 21
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 909
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 910
    const-string/jumbo v18, "FlipFont"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "checkFont - checking apkname"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_0
    const-string/jumbo v18, "com.monotype.android.font.foundation"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 914
    const/16 v18, 0x0

    return v18

    .line 918
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 919
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v18, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 920
    if-eqz p1, :cond_4

    sget-object v18, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v18, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 921
    const-string/jumbo v18, "android"

    sget-object v19, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    .line 923
    const-string/jumbo v18, "FontPreview"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "apkname : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckPlatformSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckReleaseSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const-string/jumbo v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 925
    :cond_2
    const/16 v18, 0x0

    return v18

    .line 921
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 919
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 930
    :cond_5
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_6

    .line 931
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "checkFont - check if valid certificate"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_6
    const/4 v15, 0x0

    .line 937
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    .line 941
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    if-eqz v15, :cond_c

    .line 942
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 944
    .local v17, "signatures":[Landroid/content/pm/Signature;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 946
    .local v4, "cert":[B
    :try_start_1
    const-string/jumbo v18, "SHA"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 947
    .local v14, "md":Ljava/security/MessageDigest;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 948
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 949
    .local v7, "currentSignature":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 952
    const-string/jumbo v18, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 953
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 954
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :cond_7
    const/16 v18, 0x0

    return v18

    .line 957
    :cond_8
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 958
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is incorrect**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 959
    :cond_9
    const/16 v18, 0x1

    return v18

    .line 961
    .end local v7    # "currentSignature":Ljava/lang/String;
    .end local v14    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 962
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 965
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 966
    .local v12, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 969
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string/jumbo v18, "X509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 975
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_3
    const/4 v3, 0x0

    .line 978
    .local v3, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 984
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    :goto_4
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_a

    .line 985
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "APK name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    if-eqz v3, :cond_a

    .line 987
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate issued by: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "The certificate is valid from "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Certificate SN# "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    const-string/jumbo v18, "Example"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Generated with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_a
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 998
    .local v5, "certIssuedByString":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 999
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1001
    .local v13, "issuderDNString":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1002
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_b

    .line 1003
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Certificate data is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_b
    const/16 v18, 0x0

    return v18

    .line 970
    .end local v5    # "certIssuedByString":Ljava/lang/String;
    .end local v13    # "issuderDNString":Ljava/lang/String;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v9

    .line 972
    .local v9, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    .line 979
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v9

    .line 981
    .restart local v9    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 1009
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cert":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v17    # "signatures":[Landroid/content/pm/Signature;
    :cond_c
    const/16 v18, 0x1

    return v18

    .line 938
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_3
    move-exception v10

    .local v10, "ex":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    .line 247
    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    return v0
.end method

.method public loadPreferences()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1194
    const/4 v2, 0x0

    .line 1195
    .local v2, "mode":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1198
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1199
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1200
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1202
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 1203
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1204
    const-string/jumbo v4, "FontPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1192
    :goto_0
    return-void

    .line 1207
    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1018
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1015
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 609
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    .line 610
    .local v0, "isPressed":Z
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    .line 611
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    .line 614
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v2

    sget v3, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 608
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 619
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 620
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 618
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super/range {p0 .. p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    .line 257
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 258
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    const-string/jumbo v4, "Font"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    const-string/jumbo v4, "FontSize"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v3

    float-to-int v15, v3

    .line 263
    .local v15, "fontArraySize":I
    const-string/jumbo v3, "fontArraySize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fontArraySize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/16 v3, 0xb

    if-ne v15, v3, :cond_7

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    .line 267
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 268
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 270
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessiblity_font_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    .line 273
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 274
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 280
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isAccessibilitySettingsVision"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 282
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_1

    .line 283
    const v3, 0x7f0b05b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    .line 285
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 288
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    .line 293
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->configureActionBar()V

    .line 295
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setAccessiblityFontSizeView(Z)V

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_3

    .line 303
    const v3, 0x7f1103d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 304
    .local v16, "fontStyle":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 308
    .end local v16    # "fontStyle":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "elite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 316
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update7StepFontsizeList()V

    .line 319
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    .line 322
    .local v22, "origConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    const/16 v21, 0x1

    .line 323
    .local v21, "isLayoutRtl":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    new-array v11, v3, [Landroid/content/res/Configuration;

    .line 324
    .local v11, "configurations_list":[Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v19

    .line 326
    :goto_7
    const-string/jumbo v3, "FontPreview onCreate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDensities.length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v13

    .line 328
    .local v13, "currentDensity":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_10

    .line 329
    new-instance v10, Landroid/content/res/Configuration;

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 330
    .local v10, "config":Landroid/content/res/Configuration;
    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v17

    iput v3, v10, Landroid/content/res/Configuration;->densityDpi:I

    .line 331
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v10, Landroid/content/res/Configuration;->fontScale:F

    .line 332
    aput-object v10, v11, v17

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v17

    if-ne v13, v3, :cond_6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    .line 328
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 264
    .end local v10    # "config":Landroid/content/res/Configuration;
    .end local v11    # "configurations_list":[Landroid/content/res/Configuration;
    .end local v13    # "currentDensity":I
    .end local v17    # "i":I
    .end local v21    # "isLayoutRtl":Z
    .end local v22    # "origConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 265
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 276
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 277
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    goto/16 :goto_2

    .line 288
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 290
    :cond_b
    const v3, 0x7f0b05b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 309
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 310
    const v3, 0x7f1103ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 311
    .local v26, "startFontSize":Landroid/widget/TextView;
    const v3, 0x7f0b0450

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 312
    const v3, 0x7f1103cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextSwitcher;

    .line 313
    .local v14, "endFontSize":Landroid/widget/TextSwitcher;
    const v3, 0x7f0b044f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update3StepFontsizeList()V

    goto/16 :goto_5

    .line 322
    .end local v14    # "endFontSize":Landroid/widget/TextSwitcher;
    .end local v26    # "startFontSize":Landroid/widget/TextView;
    .restart local v22    # "origConfig":Landroid/content/res/Configuration;
    :cond_d
    const/16 v21, 0x0

    .restart local v21    # "isLayoutRtl":Z
    goto/16 :goto_6

    .line 325
    .restart local v11    # "configurations_list":[Landroid/content/res/Configuration;
    :cond_e
    const/16 v19, 0x1

    .local v19, "isDesktopEnabled":Z
    goto/16 :goto_7

    .line 324
    .end local v19    # "isDesktopEnabled":Z
    :cond_f
    const/16 v19, 0x0

    .restart local v19    # "isDesktopEnabled":Z
    goto/16 :goto_7

    .line 336
    .end local v19    # "isDesktopEnabled":Z
    .restart local v13    # "currentDensity":I
    .restart local v17    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    .line 338
    invoke-static {}, Lcom/android/settings/Utils;->isDreamProject()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_with_grid_app:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    .line 344
    :goto_9
    const v3, 0x7f1105ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 345
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    .line 345
    move/from16 v0, v21

    invoke-direct {v3, v4, v0, v5, v11}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_a
    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$2;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 365
    const v3, 0x7f1103dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v0, v3

    move/from16 v24, v0

    .line 368
    .local v24, "pointCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    .line 369
    .local v18, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 370
    move/from16 v12, v17

    .line 372
    .local v12, "current":I
    const v3, 0x7f040071

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    .line 373
    .local v23, "point":Landroid/widget/ImageView;
    const v3, 0x7f0b0987

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/samsung/android/settings/display/FontPreview$3;-><init>(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 341
    .end local v12    # "current":I
    .end local v18    # "inflater":Landroid/view/LayoutInflater;
    .end local v23    # "point":Landroid/widget/ImageView;
    .end local v24    # "pointCount":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    goto/16 :goto_9

    .line 348
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 383
    .restart local v18    # "inflater":Landroid/view/LayoutInflater;
    .restart local v24    # "pointCount":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_14

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200cf

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    :cond_14
    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->changeColor(I)V

    .line 388
    const v3, 0x7f1103cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$4;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_18

    const/16 v20, 0x1

    .line 409
    .local v20, "isEasyMode":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v20, :cond_19

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 414
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentFontIndex:I

    .line 416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v3, v4, :cond_15

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$5;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    .line 455
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_1a

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v3, :cond_16

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    .line 458
    :cond_16
    return-void

    .line 386
    .end local v20    # "isEasyMode":Z
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 408
    :cond_18
    const/16 v20, 0x0

    .restart local v20    # "isEasyMode":Z
    goto :goto_d

    .line 409
    :cond_19
    const/4 v3, 0x1

    goto :goto_e

    .line 460
    :cond_1a
    const v3, 0x7f1103d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 465
    .local v25, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0a04c4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 466
    const v4, 0x7f0a04ba

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 465
    add-int/2addr v3, v4

    .line 467
    const v4, 0x7f0a04cb

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 465
    add-int v6, v3, v4

    .line 468
    .local v6, "divider_inset_size":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 469
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 470
    .local v2, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 476
    :goto_f
    new-instance v27, Landroid/widget/TextView;

    invoke-direct/range {v27 .. v28}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 477
    .local v27, "tvtemp":Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 478
    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v3, :cond_1d

    .line 483
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v3, :cond_1b

    .line 484
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 490
    :cond_1b
    :goto_10
    const-string/jumbo v3, "FontPreview onCreate"

    const-string/jumbo v4, "called onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 472
    .end local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v27    # "tvtemp":Landroid/widget/TextView;
    :cond_1c
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 473
    .restart local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 488
    .restart local v27    # "tvtemp":Landroid/widget/TextView;
    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    goto :goto_10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f0205ad

    .line 1094
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1096
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1098
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1099
    const v1, 0x7f110225

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    .line 1100
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1101
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$8;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    const v1, 0x7f110226

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0b0437

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1111
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1112
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$9;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1127
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1131
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1692
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    .line 1694
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    if-eqz v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->cancel(Z)Z

    .line 1696
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    .line 1700
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1701
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1703
    :cond_1
    const-string/jumbo v0, "FontPreview destroy"

    const-string/jumbo v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 24
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "arg3"    # J
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
    .line 786
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v20, "FlipFont"

    const-string/jumbo v21, "onItemClick:()"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 789
    return-void

    .line 792
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 794
    const/16 v16, 0x0

    .line 795
    .local v16, "question":Ljava/lang/String;
    const/4 v12, 0x0

    .line 796
    .local v12, "fontName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 798
    .local v15, "press_apkname":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f10014e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    sput v20, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 802
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 809
    .end local v15    # "press_apkname":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05e9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 810
    .local v8, "download_font":Ljava/lang/String;
    if-eqz v8, :cond_3

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 815
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05cf

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 816
    .local v19, "uri":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 817
    .local v13, "intent":Landroid/content/Intent;
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 818
    const v20, 0x14000020

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05ce

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .end local v19    # "uri":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;

    .line 822
    .restart local v19    # "uri":Ljava/lang/String;
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v21, "android.intent.action.VIEW"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v20

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v13

    .line 823
    const v20, 0x14000020

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 825
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v21

    sget v22, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 831
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v19    # "uri":Ljava/lang/String;
    :goto_0
    return-void

    .line 803
    .end local v8    # "download_font":Ljava/lang/String;
    .restart local v15    # "press_apkname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 804
    .local v9, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 805
    return-void

    .line 827
    .end local v9    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v15    # "press_apkname":Ljava/lang/String;
    .restart local v8    # "download_font":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 828
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 834
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v7

    .line 835
    .local v7, "currentThemeFont":Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 840
    :cond_4
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v21

    sget v22, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static/range {v20 .. v23}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 842
    return-void

    .line 844
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 847
    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05cb

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 849
    .local v17, "s":Ljava/lang/String;
    move-object/from16 v16, v17

    .line 865
    .end local v12    # "fontName":Ljava/lang/String;
    .local v16, "question":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "activity"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 866
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/16 v20, 0x3

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 868
    .local v6, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v6, :cond_6

    .line 870
    const/16 v20, 0x1

    :try_start_2
    move/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    .line 873
    :cond_6
    :goto_2
    const-string/jumbo v20, "FlipFont"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "pkgName1:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 881
    :cond_7
    const/4 v5, 0x0

    .line 882
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 884
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .line 897
    .end local v5    # "apkname":Ljava/lang/String;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v20, v0

    const-string/jumbo v21, "USER_SELECTED_FONT_STYLE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 902
    .local v18, "selectedFont":Ljava/lang/String;
    if-eqz v18, :cond_d

    const-string/jumbo v20, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 903
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v22

    sget v23, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    if-eqz v14, :cond_e

    const/16 v20, 0x0

    :goto_5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 785
    .end local v18    # "selectedFont":Ljava/lang/String;
    :cond_a
    return-void

    .line 851
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v6    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v17    # "s":Ljava/lang/String;
    .restart local v12    # "fontName":Ljava/lang/String;
    .local v16, "question":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b05cd

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 853
    .restart local v17    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_c

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 861
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v12

    .line 862
    .local v12, "fontName":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .local v16, "question":Ljava/lang/String;
    goto/16 :goto_1

    .line 902
    .end local v12    # "fontName":Ljava/lang/String;
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v6    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v18    # "selectedFont":Ljava/lang/String;
    :cond_d
    const/4 v14, 0x1

    .local v14, "isDefaultFontSelected":Z
    goto/16 :goto_4

    .line 903
    .end local v14    # "isDefaultFontSelected":Z
    :cond_e
    const/16 v20, 0x1

    goto/16 :goto_5

    .line 885
    .end local v18    # "selectedFont":Ljava/lang/String;
    .restart local v5    # "apkname":Ljava/lang/String;
    :catch_2
    move-exception v11

    .local v11, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_3

    .line 871
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_3
    move-exception v11

    .restart local v11    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2
.end method

.method public onOkButtonPressed()Z
    .locals 35

    .prologue
    .line 1232
    const-string/jumbo v30, ""

    .line 1233
    .local v30, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v31

    .line 1236
    .local v31, "themePath":Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 1237
    .local v20, "endIndex":I
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v30

    .line 1238
    const-string/jumbo v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#Theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .end local v20    # "endIndex":I
    .end local v31    # "themePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    .line 1377
    .local v12, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    if-nez v2, :cond_12

    .line 1380
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1388
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 1390
    .local v15, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/content/res/Configuration;->FlipFont:I

    .line 1391
    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1395
    .end local v15    # "config":Landroid/content/res/Configuration;
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1396
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    .line 1397
    const/4 v2, 0x1

    return v2

    .line 1240
    .end local v12    # "am":Landroid/app/IActivityManager;
    :cond_1
    const/16 v21, 0x0

    .line 1242
    .local v21, "err_filecopy":Z
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const/4 v5, 0x0

    .line 1246
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    .line 1248
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 1255
    .end local v5    # "apkname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1256
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1258
    const/4 v2, 0x0

    return v2

    .line 1249
    .restart local v5    # "apkname":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1251
    .local v17, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    return v2

    .line 1261
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 1262
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 1267
    :goto_3
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 1271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1278
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30    # "selectedFont":Ljava/lang/String;
    check-cast v30, Ljava/lang/String;

    .line 1280
    .restart local v30    # "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 1284
    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    .line 1287
    .local v3, "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    if-eqz v30, :cond_5

    const-string/jumbo v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1288
    :cond_5
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1291
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    if-nez v30, :cond_0

    .line 1296
    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const/4 v2, 0x0

    return v2

    .line 1264
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto/16 :goto_3

    .line 1303
    .restart local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v29

    .line 1305
    .local v29, "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    move-object/from16 v28, v30

    .line 1306
    .local v28, "sFontDir":Ljava/lang/String;
    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 1308
    .local v25, "index":I
    if-lez v25, :cond_8

    .line 1309
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1312
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1314
    .local v4, "fontDir":Ljava/io/File;
    const/16 v32, 0x0

    .line 1316
    .local v32, "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    if-eqz v29, :cond_9

    .line 1317
    const/16 v23, 0x0

    .end local v21    # "err_filecopy":Z
    .end local v32    # "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    .local v23, "i":I
    :goto_4
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_9

    .line 1318
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    .line 1322
    .local v32, "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1323
    .local v5, "apkname":Ljava/lang/String;
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1325
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v26

    .line 1327
    .local v26, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    .line 1328
    .local v14, "assetManager":Landroid/content/res/AssetManager;
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tpf.getFileName(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 1330
    .local v24, "in":Ljava/io/InputStream;
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v21

    .line 1331
    .local v21, "err_filecopy":Z
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1317
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "assetManager":Landroid/content/res/AssetManager;
    .end local v24    # "in":Ljava/io/InputStream;
    .end local v26    # "res":Landroid/content/res/Resources;
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 1332
    .end local v21    # "err_filecopy":Z
    :catch_1
    move-exception v22

    .line 1334
    .local v22, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/FontPreview;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .restart local v21    # "err_filecopy":Z
    goto :goto_5

    .line 1339
    .end local v21    # "err_filecopy":Z
    .end local v22    # "ex":Ljava/lang/Exception;
    .end local v23    # "i":I
    .end local v32    # "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    :cond_9
    if-eqz v21, :cond_b

    .line 1346
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1347
    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1354
    const/4 v2, 0x0

    return v2

    .line 1357
    :cond_b
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1360
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1363
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1367
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v33, "#"

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1368
    :catch_2
    move-exception v19

    .line 1369
    .local v19, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "FontPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1381
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "index":I
    .end local v28    # "sFontDir":Ljava/lang/String;
    .end local v29    # "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    .restart local v12    # "am":Landroid/app/IActivityManager;
    :catch_3
    move-exception v18

    .line 1383
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1401
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 1402
    .local v10, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 1403
    .local v11, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v23, 0x1

    .line 1405
    .restart local v23    # "i":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "aTask$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1406
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 1408
    .local v27, "s":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1409
    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1410
    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1411
    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1412
    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 1422
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6

    .line 1413
    :cond_f
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1414
    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1415
    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1416
    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1417
    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1418
    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1419
    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1420
    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1421
    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1424
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1425
    const-string/jumbo v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1426
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1429
    :cond_10
    const-string/jumbo v2, "com.sec.android.app.camera"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 1430
    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1432
    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1446
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "aTask$iterator":Ljava/util/Iterator;
    .end local v10    # "activityManager":Landroid/app/ActivityManager;
    .end local v11    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v23    # "i":I
    .end local v27    # "s":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    return v2

    .line 1392
    :catch_4
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1687
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 1684
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1662
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 1663
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_0

    .line 1664
    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v4, :cond_0

    .line 1665
    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    invoke-direct {v4, p0, v7}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 1666
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    new-array v7, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v7}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1667
    const-string/jumbo v4, "FontPreview onResume"

    const-string/jumbo v7, "called onResume()"

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v4, :cond_2

    .line 1671
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1672
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v0

    .line 1673
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "easy_mode_switch"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x1

    .line 1674
    .local v1, "isEasyMode":Z
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-nez v0, :cond_1

    if-eqz v1, :cond_6

    :cond_1
    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 1675
    const v4, 0x7f1103cb

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1676
    .local v3, "screenSizeTextMin":Landroid/widget/TextView;
    if-eqz v1, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1677
    const v4, 0x7f1103cc

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1678
    .local v2, "screenSizeTextMax":Landroid/widget/TextView;
    if-eqz v1, :cond_8

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1680
    .end local v1    # "isEasyMode":Z
    .end local v2    # "screenSizeTextMax":Landroid/widget/TextView;
    .end local v3    # "screenSizeTextMin":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1661
    return-void

    .line 1672
    :cond_3
    const/4 v0, 0x1

    .local v0, "isDesktopEnabled":Z
    goto :goto_0

    .line 1671
    .end local v0    # "isDesktopEnabled":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isDesktopEnabled":Z
    goto :goto_0

    .line 1673
    .end local v0    # "isDesktopEnabled":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isEasyMode":Z
    goto :goto_1

    :cond_6
    move v4, v6

    .line 1674
    goto :goto_2

    .restart local v3    # "screenSizeTextMin":Landroid/widget/TextView;
    :cond_7
    move v4, v6

    .line 1676
    goto :goto_3

    .restart local v2    # "screenSizeTextMax":Landroid/widget/TextView;
    :cond_8
    move v5, v6

    .line 1678
    goto :goto_4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1588
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1589
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1590
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1587
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1535
    :goto_0
    return-void

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1214
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1217
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1219
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1220
    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1223
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1211
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1451
    const/4 v1, 0x0

    .line 1452
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1454
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1449
    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 5
    .param p1, "fontFloatSize"    # F

    .prologue
    .line 1518
    move v0, p1

    .line 1519
    .local v0, "fontScale":F
    const-string/jumbo v2, "FontPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFontSizePreference : fontScale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1522
    .local v1, "largeFontScale":F
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    .line 1523
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1526
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1527
    move v0, v1

    .line 1531
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 1516
    return-void
.end method
