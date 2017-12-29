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

.field private static sDisplayScreenSize:I

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
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

.field private mResIds_without_grid_app:[I

.field private mResIds_without_grid_app_external:[I

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
.method static synthetic -get0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/util/LinkedHashSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

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

.method static synthetic -get16(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/display/FontPreview;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/display/FontPreview;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get19()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FontPreview;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get20()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return v0
.end method

.method static synthetic -get21()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return v0
.end method

.method static synthetic -get22()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayScreenSize:I

    return v0
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

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/display/FontPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    return p1
.end method

.method static synthetic -set5(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontCancel:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontDone:I

    return p0
.end method

.method static synthetic -set7(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontSize:I

    return p0
.end method

.method static synthetic -set8(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayScreenSize:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FontPreview;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FontPreview;I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FontPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontPreview()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/FontPreview;ZZ)V
    .locals 0
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/FontPreview;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/display/FontPreview;I)V
    .locals 0
    .param p1, "previousSelectedIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreview;->startDownloadFont(I)V

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

    .line 114
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    .line 134
    const/4 v0, 0x7

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    .line 187
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 188
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 189
    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v4

    .line 190
    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v5

    .line 191
    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    aput-object v1, v0, v6

    .line 192
    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v7

    .line 193
    const-string/jumbo v1, "com.monotype.android.font.rosemary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "com.monotype.android.font.applemint"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "com.monotype.android.font.tinkerbell"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "com.monotype.android.font.udrgothic"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "com.monotype.android.font.udmincho"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "com.monotype.android.font.arjpopb"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "com.monotype.android.font.kaiti"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "com.monotype.android.font.shaonv"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "com.monotype.android.font.miao"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 187
    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    .line 239
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    .line 241
    sput v4, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    .line 242
    sput v5, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    .line 243
    sput v7, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    .line 1246
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    .line 100
    return-void

    .line 239
    nop

    :array_0
    .array-data 4
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const v4, 0x7f040299

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 105
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 117
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 118
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 122
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 123
    iput v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 125
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    .line 206
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    .line 207
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    .line 209
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    .line 211
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 212
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckPlatformSignatures:Z

    .line 213
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsCheckReleaseSignatures:Z

    .line 214
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 215
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    .line 217
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 232
    const v0, 0x7f040296

    .line 231
    filled-new-array {v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app:[I

    .line 235
    const v0, 0x7f040295

    .line 234
    filled-new-array {v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app_external:[I

    .line 1611
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    .line 1612
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 1613
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 1614
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 1774
    new-instance v0, Lcom/samsung/android/settings/display/FontPreview$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/FontPreview$1;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 100
    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 775
    const/high16 v0, 0x3f800000    # 1.0f

    .line 776
    .local v0, "fontsize":F
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 777
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 781
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 782
    .local v2, "previousFontSize":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0424

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 783
    .local v1, "mPreviewTextSize":I
    if-lt v2, v7, :cond_2

    if-ge p1, v7, :cond_2

    .line 784
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 791
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    .line 792
    sput p1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    .line 793
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    .line 774
    return-void

    .line 779
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

    .line 785
    .restart local v1    # "mPreviewTextSize":I
    .restart local v2    # "previousFontSize":I
    :cond_2
    if-ge v2, v7, :cond_3

    if-lt p1, v7, :cond_3

    .line 786
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    int-to-float v4, v1

    mul-float/2addr v4, v0

    const v5, 0x3f947ae1    # 1.16f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 788
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

    .line 1762
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1763
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
    .line 730
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    .line 731
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 732
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f0400a4

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 733
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f11023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 735
    .local v0, "headerBar":Landroid/widget/LinearLayout;
    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 729
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
    .line 1481
    const/4 v0, 0x0

    .line 1482
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 1485
    .local v3, "err_filecopy":Z
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1491
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

    .line 1492
    .local v5, "uriFont":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1495
    .local v4, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1502
    .local v4, "isFont":Ljava/io/InputStream;
    invoke-virtual {p1, p2, v4, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    .line 1505
    .local v3, "err_filecopy":Z
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1509
    :goto_0
    return v3

    .line 1486
    .end local v4    # "isFont":Ljava/io/InputStream;
    .end local v5    # "uriFont":Landroid/net/Uri;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v3, "err_filecopy":Z
    :catch_0
    move-exception v1

    .line 1487
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 1496
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v4, "isFont":Ljava/io/InputStream;
    .restart local v5    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 1498
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 1506
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

    .line 1081
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    .line 1082
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessiblity_font_switch"

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    :cond_1
    const/4 v0, 0x0

    .line 1086
    .local v0, "changeMode":I
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedFontSizeSeekBar:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    if-eq v1, v2, :cond_2

    .line 1087
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v1, :cond_2

    .line 1088
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    or-int/lit8 v0, v1, 0x0

    .line 1091
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    if-eq v1, v2, :cond_3

    .line 1092
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    if-ltz v1, :cond_3

    .line 1093
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    or-int/2addr v0, v1

    .line 1096
    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    if-ltz v1, :cond_4

    .line 1097
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    or-int/2addr v0, v1

    .line 1100
    :cond_4
    if-nez v0, :cond_5

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    .line 1102
    return-void

    .line 1104
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontStyleOrFontSize(I)V

    .line 1080
    return-void
.end method

.method private doneFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1184
    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sSelectedFontSizeSeekBarProgress:I

    .line 1185
    .local v0, "fontIndex":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1186
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

    .line 1188
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1190
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    .line 1191
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1192
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1193
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

    .line 1194
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    :goto_0
    return-void

    .line 1196
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 1197
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1198
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1199
    const-string/jumbo v3, "FontPreview"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1203
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1204
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1206
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

    .line 1156
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

    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "isAvailableFont":I
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_STYLE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 1159
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_STYLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1161
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->onOkButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 1164
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1165
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_SCREEN_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 1166
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_SCREEN_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    .line 1170
    :cond_1
    sget v1, Lcom/samsung/android/settings/display/FontPreview;->CHANGE_MODE_FONT_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 1171
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->doneFontSize()V

    .line 1173
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontFloatSize:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreview;->writeFontSizePreference(F)V

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->readFontSizePreference()V

    .line 1176
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 1177
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 1155
    :cond_3
    :goto_1
    return-void

    .line 1161
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 1178
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->finish()V

    goto :goto_1
.end method

.method private getCurrentSavedFontString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1041
    const-string/jumbo v0, "default"

    .line 1042
    .local v0, "fontName":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "selectedFont":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1044
    .local v2, "temp":[Ljava/lang/String;
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "temp":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    .line 1046
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 1048
    :cond_0
    return-object v0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1739
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1741
    .local v0, "mSelectedFontSize":I
    const/4 v1, 0x0

    .line 1742
    .local v1, "mode":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1744
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1745
    .local v3, "selectedFont":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1746
    .local v4, "temp":[Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1747
    .local v4, "temp":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 1748
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    .line 1753
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

    .line 1754
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b070d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "selectedFont":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1758
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 562
    if-eqz p1, :cond_1

    .line 564
    const v3, 0x7f110408

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 565
    .local v1, "layoutLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 566
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 569
    const v3, 0x7f11040b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 570
    .local v2, "switchDividerView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 572
    const v3, 0x7f11040a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    .line 573
    const v3, 0x7f110409

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    .line 574
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitchTextView:Landroid/widget/TextView;

    invoke-static {v3, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 575
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 576
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 577
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 580
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 581
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 582
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b071f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
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

    .line 581
    goto :goto_0
.end method

.method private setDim(ZZ)V
    .locals 4
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    const v3, 0x7f0d017e

    const v2, 0x7f020642

    .line 587
    if-eqz p1, :cond_5

    .line 588
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 592
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f02061f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v1, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 608
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    if-eqz v0, :cond_3

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_3

    .line 610
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animationStart(Z)V

    .line 612
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 614
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    .line 586
    :cond_4
    return-void

    .line 598
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 602
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f02061e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 603
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 605
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

    .line 638
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 639
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 648
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    .line 649
    .local v6, "currentThemeFontPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    .end local v6    # "currentThemeFontPath":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    .line 661
    const v0, 0x7f11040e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ScrollView;

    .line 662
    .local v9, "fontScrollView":Landroid/widget/ScrollView;
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 663
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$7;

    invoke-direct {v2, p0, v9}, Lcom/samsung/android/settings/display/FontPreview$7;-><init>(Lcom/samsung/android/settings/display/FontPreview;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->loadPreferences()V

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setSelectedFontStyle()V

    .line 697
    if-eqz p1, :cond_2

    .line 698
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 700
    .local v3, "userSelectedStyleIndex":I
    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 702
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 637
    .end local v3    # "userSelectedStyleIndex":I
    :cond_2
    return-void

    .line 654
    .end local v9    # "fontScrollView":Landroid/widget/ScrollView;
    :catch_0
    move-exception v7

    .line 655
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v6, 0x0

    .line 506
    const v3, 0x7f040125

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setContentView(I)V

    .line 507
    const v3, 0x7f110405

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 508
    const v3, 0x7f110407

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontPreviewSizeStyleLayout:Landroid/widget/LinearLayout;

    .line 510
    const v3, 0x7f110418

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 511
    const v3, 0x7f110417

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 512
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const v5, 0x7f020642

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d007a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 514
    .local v2, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 515
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    sget v4, Lcom/samsung/android/settings/display/FontPreview;->DUAL_COLOR_FOR_ELEVENLEVEL_FONT_VALUE:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 516
    const v3, 0x7f11040d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    .line 517
    const v3, 0x7f110419

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    .line 519
    const v3, 0x7f110416

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextSwitcher;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    .line 520
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/display/FontPreview$6;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 532
    const/high16 v3, 0x10a0000

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 533
    .local v0, "in":Landroid/view/animation/Animation;
    const v3, 0x10a0001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 534
    .local v1, "out":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v0}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 535
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 537
    if-eqz p1, :cond_0

    .line 538
    const v3, 0x7f110415

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMinTextView:Landroid/widget/TextView;

    .line 539
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mHugeString:Ljava/lang/String;

    .line 540
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    .line 541
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 543
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    if-nez v3, :cond_1

    .line 544
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b071d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 557
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontWithDensityDescTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    return-void

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b071e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 549
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-nez v3, :cond_0

    .line 552
    const/4 v3, 0x1

    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 708
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 709
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 710
    .local v0, "adapterCount":I
    const/4 v5, 0x0

    .line 711
    .local v5, "totalHeight":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 712
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v2, v9, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 713
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 714
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 711
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 717
    .end local v3    # "listItem":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "font_size"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 718
    .local v1, "fontSize":I
    if-nez v1, :cond_1

    .line 719
    add-int/lit8 v5, v5, 0x5

    .line 722
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 723
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 724
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 725
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 707
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

    .line 1052
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 1053
    return-void

    .line 1055
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->getCurrentSavedFontString()Ljava/lang/String;

    move-result-object v6

    .line 1056
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

    .line 1058
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1060
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

    .line 1068
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1069
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1051
    return-void

    .line 1062
    :cond_1
    const-string/jumbo v0, "default"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1066
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

.method private startDownloadFont(I)V
    .locals 7
    .param p1, "previousSelectedIndex"    # I

    .prologue
    .line 906
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0706

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 907
    .local v2, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 908
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 909
    const v3, 0x14000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 911
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 912
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0705

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "uri":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 913
    .restart local v2    # "uri":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 914
    const v3, 0x14000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 916
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 917
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v4

    sget v5, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 922
    iput p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 902
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private update3StepFontsizeList()V
    .locals 7

    .prologue
    .line 741
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 743
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c00a2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "fontSizeNames":[Ljava/lang/String;
    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeStrings:[Ljava/lang/String;

    .line 747
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 752
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 753
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    .line 739
    return-void
.end method

.method private update7StepFontsizeList()V
    .locals 6

    .prologue
    .line 760
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 762
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v2, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 768
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v5, v3, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    .line 759
    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1562
    move-object v1, p1

    .line 1564
    .local v1, "deletePackageName":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1565
    const v3, 0x7f0b070c

    .line 1564
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1566
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$11;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/FontPreview$11;-><init>(Lcom/samsung/android/settings/display/FontPreview;Ljava/lang/String;)V

    const v4, 0x7f0b1ac5

    .line 1564
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1583
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/FontPreview$12;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    const/high16 v4, 0x1040000

    .line 1564
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1592
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$13;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1601
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1561
    return-void
.end method

.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1767
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1768
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1766
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 21
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 927
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 928
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

    .line 931
    :cond_0
    const-string/jumbo v18, "com.monotype.android.font.foundation"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 932
    const/16 v18, 0x0

    return v18

    .line 936
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 937
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

    .line 938
    if-eqz p1, :cond_4

    sget-object v18, Lcom/samsung/android/settings/display/FontPreview;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v18, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 939
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

    .line 940
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

    .line 941
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

    .line 942
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

    .line 943
    :cond_2
    const/16 v18, 0x0

    return v18

    .line 939
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 937
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 948
    :cond_5
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_6

    .line 949
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "checkFont - check if valid certificate"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_6
    const/4 v15, 0x0

    .line 955
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

    .line 959
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    if-eqz v15, :cond_c

    .line 960
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 962
    .local v17, "signatures":[Landroid/content/pm/Signature;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 964
    .local v4, "cert":[B
    :try_start_1
    const-string/jumbo v18, "SHA"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 965
    .local v14, "md":Ljava/security/MessageDigest;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 966
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 967
    .local v7, "currentSignature":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 970
    const-string/jumbo v18, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 971
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 972
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :cond_7
    const/16 v18, 0x0

    return v18

    .line 975
    :cond_8
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 976
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is incorrect**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 977
    :cond_9
    const/16 v18, 0x1

    return v18

    .line 979
    .end local v7    # "currentSignature":Ljava/lang/String;
    .end local v14    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 980
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 983
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 984
    .local v12, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 987
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string/jumbo v18, "X509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 993
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_3
    const/4 v3, 0x0

    .line 996
    .local v3, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1002
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    :goto_4
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_a

    .line 1003
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

    .line 1004
    if-eqz v3, :cond_a

    .line 1005
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

    .line 1006
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

    .line 1007
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

    .line 1008
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

    .line 1009
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

    .line 1014
    :cond_a
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 1016
    .local v5, "certIssuedByString":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 1017
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1019
    .local v13, "issuderDNString":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1020
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v18, :cond_b

    .line 1021
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Certificate data is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_b
    const/16 v18, 0x0

    return v18

    .line 988
    .end local v5    # "certIssuedByString":Ljava/lang/String;
    .end local v13    # "issuderDNString":Ljava/lang/String;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v9

    .line 990
    .local v9, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    .line 997
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v9

    .line 999
    .restart local v9    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 1027
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cert":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v17    # "signatures":[Landroid/content/pm/Signature;
    :cond_c
    const/16 v18, 0x1

    return v18

    .line 956
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_3
    move-exception v10

    .local v10, "ex":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    .line 248
    sget v0, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFont:I

    return v0
.end method

.method public loadPreferences()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1212
    const/4 v2, 0x0

    .line 1213
    .local v2, "mode":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1216
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1217
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1218
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1220
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 1221
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1222
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

    .line 1223
    iput v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1210
    :goto_0
    return-void

    .line 1225
    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1036
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1033
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    .line 622
    .local v0, "isPressed":Z
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreview;->setDim(ZZ)V

    .line 623
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 625
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    .line 626
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v2

    sget v3, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontAccessibilitySwitch:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 620
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 631
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 632
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsClickSwitch:Z

    .line 633
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 630
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1730
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1731
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreview;->setReHeightFontStyleListview()V

    .line 1728
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super/range {p0 .. p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 254
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 255
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v17, v0

    .line 258
    .local v17, "fontArraySize":I
    const-string/jumbo v3, "fontArraySize"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fontArraySize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v3, 0xb

    move/from16 v0, v17

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    .line 260
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

    .line 262
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    .line 263
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 265
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "accessiblity_font_switch"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    .line 268
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mAccessFontOnOff:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 269
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 275
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isAccessibilitySettingsVision"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    .line 277
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_1

    .line 278
    const v3, 0x7f0b06ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    .line 279
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v3, :cond_1

    .line 280
    const/4 v3, 0x6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    .line 283
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

    .line 289
    :goto_4
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 290
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    .line 291
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_c

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string/jumbo v4, "ScreenZoomAndFont"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string/jumbo v4, "Font"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->configureActionBar()V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setFontsizeLayoutSevenOrEleven(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsAccessibilitySettingsVision:Z

    if-eqz v3, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setAccessiblityFontSizeView(Z)V

    .line 308
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_3

    .line 309
    const v3, 0x7f11041a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 310
    .local v18, "fontStyle":Landroid/widget/LinearLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 314
    .end local v18    # "fontStyle":Landroid/widget/LinearLayout;
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

    if-eqz v3, :cond_d

    .line 322
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update7StepFontsizeList()V

    .line 325
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/android/settings/display/FontPreview;->DENSITY_BASE_PIXEL:[F

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getProperDensities(Landroid/content/Context;[F)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    .line 327
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    .line 328
    .local v23, "origConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    const/16 v22, 0x1

    .line 329
    .local v22, "isLayoutRtl":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    new-array v12, v3, [Landroid/content/res/Configuration;

    .line 330
    .local v12, "configurations_list":[Landroid/content/res/Configuration;
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

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v14

    .line 332
    .local v14, "currentDensity":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_f

    .line 333
    new-instance v11, Landroid/content/res/Configuration;

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 334
    .local v11, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v19

    iput v3, v11, Landroid/content/res/Configuration;->densityDpi:I

    .line 335
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v11, Landroid/content/res/Configuration;->fontScale:F

    .line 336
    aput-object v11, v12, v19

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    aget v3, v3, v19

    if-ne v14, v3, :cond_6

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    .line 332
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 259
    .end local v11    # "config":Landroid/content/res/Configuration;
    .end local v12    # "configurations_list":[Landroid/content/res/Configuration;
    .end local v14    # "currentDensity":I
    .end local v19    # "i":I
    .end local v22    # "isLayoutRtl":Z
    .end local v23    # "origConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 260
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 271
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFontLargerOn:Z

    .line 272
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    goto/16 :goto_2

    .line 283
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 285
    :cond_b
    const v3, 0x7f0b06ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 295
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string/jumbo v4, "Font"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    const-string/jumbo v4, "ScreenZoomAndFont"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 315
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 316
    const v3, 0x7f110415

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 317
    .local v28, "startFontSize":Landroid/widget/TextView;
    const v3, 0x7f0b052c

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 318
    const v3, 0x7f110416

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextSwitcher;

    .line 319
    .local v16, "endFontSize":Landroid/widget/TextSwitcher;
    const v3, 0x7f0b052b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->update3StepFontsizeList()V

    goto/16 :goto_6

    .line 328
    .end local v16    # "endFontSize":Landroid/widget/TextSwitcher;
    .end local v28    # "startFontSize":Landroid/widget/TextView;
    .restart local v23    # "origConfig":Landroid/content/res/Configuration;
    :cond_e
    const/16 v22, 0x0

    .restart local v22    # "isLayoutRtl":Z
    goto/16 :goto_7

    .line 340
    .restart local v12    # "configurations_list":[Landroid/content/res/Configuration;
    .restart local v14    # "currentDensity":I
    .restart local v19    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedScreenSize:I

    .line 343
    :try_start_0
    new-instance v27, Lcom/android/settings/SettingsActivity;

    invoke-direct/range {v27 .. v27}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 344
    .local v27, "settingsActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/SettingsActivity;->getDashboardCategories()Ljava/util/List;

    move-result-object v10

    .line 346
    .local v10, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v10    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v27    # "settingsActivity":Lcom/android/settings/SettingsActivity;
    :goto_9
    const v3, 0x7f1106b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 355
    new-instance v3, Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    .line 356
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    .line 355
    move/from16 v0, v22

    invoke-direct {v3, v4, v0, v5, v12}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    .line 357
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_a
    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$2;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 375
    const v3, 0x7f110427

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v0, v3

    move/from16 v25, v0

    .line 378
    .local v25, "pointCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 379
    .local v20, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x0

    :goto_b
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 380
    move/from16 v13, v19

    .line 382
    .local v13, "current":I
    const v3, 0x7f040078

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 383
    .local v24, "point":Landroid/widget/ImageView;
    const v3, 0x7f0b0b53

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v19, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/samsung/android/settings/display/FontPreview$3;-><init>(Lcom/samsung/android/settings/display/FontPreview;I)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 379
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .line 349
    .end local v13    # "current":I
    .end local v20    # "inflater":Landroid/view/LayoutInflater;
    .end local v24    # "point":Landroid/widget/ImageView;
    .end local v25    # "pointCount":I
    .restart local v10    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .restart local v27    # "settingsActivity":Lcom/android/settings/SettingsActivity;
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app_external:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 350
    .end local v10    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v27    # "settingsActivity":Lcom/android/settings/SettingsActivity;
    :catch_0
    move-exception v15

    .line 351
    .local v15, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mResIds_without_grid_app_external:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    goto/16 :goto_9

    .line 358
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 393
    .restart local v20    # "inflater":Landroid/view/LayoutInflater;
    .restart local v25    # "pointCount":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_13

    .line 394
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200ee

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    :cond_13
    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewSampleResIds:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->changeColor(I)V

    .line 398
    const v3, 0x7f110414

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mDensities:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$4;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_17

    const/16 v21, 0x1

    .line 421
    .local v21, "isEasyMode":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v21, :cond_18

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getSelectedFontSize(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 426
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentFontIndex:I

    .line 428
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontSize:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mExtraLargeFontIndex:I

    if-le v3, v4, :cond_14

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mShowForHugeFontTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v4, Lcom/samsung/android/settings/display/FontPreview$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/display/FontPreview$5;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/display/FontPreview;->mCurrentDensityIndex:I

    invoke-virtual {v3, v4}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-eqz v3, :cond_19

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v3, :cond_15

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->changeFontSizeFromSeekBar(I)V

    .line 470
    :cond_15
    return-void

    .line 396
    .end local v21    # "isEasyMode":Z
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 420
    :cond_17
    const/16 v21, 0x0

    .restart local v21    # "isEasyMode":Z
    goto :goto_d

    .line 421
    :cond_18
    const/4 v3, 0x1

    goto :goto_e

    .line 472
    :cond_19
    const v3, 0x7f11041b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 477
    .local v26, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0a0562

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 478
    const v4, 0x7f0a01c3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 477
    add-int v6, v3, v4

    .line 480
    .local v6, "divider_inset_size":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 481
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 482
    .local v2, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 488
    :goto_f
    new-instance v29, Landroid/widget/TextView;

    invoke-direct/range {v29 .. v30}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 489
    .local v29, "tvtemp":Landroid/widget/TextView;
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 490
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v3, :cond_1c

    .line 495
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v3, :cond_1a

    .line 496
    new-instance v3, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 502
    :cond_1a
    :goto_10
    const-string/jumbo v3, "FontPreview onCreate"

    const-string/jumbo v4, "called onCreate()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 484
    .end local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v29    # "tvtemp":Landroid/widget/TextView;
    :cond_1b
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

    .line 485
    .restart local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    .line 500
    .restart local v29    # "tvtemp":Landroid/widget/TextView;
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/display/FontPreview;->setFontStyleList(Landroid/os/Bundle;)V

    goto :goto_10
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v3, 0x7f02064e

    .line 1112
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1114
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 1116
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1117
    const v1, 0x7f11023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    .line 1118
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1119
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$8;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1127
    const v1, 0x7f11023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    .line 1128
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f0b0511

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1129
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 1130
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/display/FontPreview$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreview$9;-><init>(Lcom/samsung/android/settings/display/FontPreview;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsEnabledShowBtnBg:Z

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mcancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1145
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1149
    .end local v0    # "customView":Landroid/view/View;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1713
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->cancel(Z)Z

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1722
    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1724
    :cond_1
    const-string/jumbo v0, "FontPreview destroy"

    const-string/jumbo v1, "called onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
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
    .line 798
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "onItemClick:()"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 801
    return-void

    .line 803
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 804
    .local v14, "previousSelectedIndex":I
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 806
    const/4 v15, 0x0

    .line 807
    .local v15, "question":Ljava/lang/String;
    const/4 v11, 0x0

    .line 808
    .local v11, "fontName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 810
    .local v13, "press_apkname":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0f0179

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    sput v18, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 814
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 821
    .end local v13    # "press_apkname":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0721

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 822
    .local v8, "download_font":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 824
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/display/FontPreview;->startDownloadFont(I)V

    .line 826
    return-void

    .line 815
    .end local v8    # "download_font":Ljava/lang/String;
    .restart local v13    # "press_apkname":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 816
    .local v9, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 817
    return-void

    .line 829
    .end local v9    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .end local v13    # "press_apkname":Ljava/lang/String;
    .restart local v8    # "download_font":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v7

    .line 830
    .local v7, "currentThemeFont":Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 835
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v19

    sget v20, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v18 .. v21}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 837
    return-void

    .line 839
    :cond_4
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    .line 842
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0702

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 844
    .local v16, "s":Ljava/lang/String;
    move-object/from16 v15, v16

    .line 860
    .end local v11    # "fontName":Ljava/lang/String;
    .local v15, "question":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 861
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x3

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v6

    .line 863
    .local v6, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v6, :cond_5

    .line 865
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 868
    :cond_5
    :goto_1
    const-string/jumbo v18, "FlipFont"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "pkgName1:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 876
    :cond_6
    const/4 v5, 0x0

    .line 877
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 879
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 892
    .end local v5    # "apkname":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string/jumbo v19, "USER_SELECTED_FONT_STYLE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 895
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 897
    .local v17, "selectedFont":Ljava/lang/String;
    if-eqz v17, :cond_c

    const-string/jumbo v18, "default"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 898
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->getMetricsCategory()I

    move-result v20

    sget v21, Lcom/samsung/android/settings/display/FontPreview;->sDisplayFontStyle:I

    if-eqz v12, :cond_d

    const/16 v18, 0x0

    :goto_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 797
    .end local v17    # "selectedFont":Ljava/lang/String;
    :cond_9
    return-void

    .line 846
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v6    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v16    # "s":Ljava/lang/String;
    .restart local v11    # "fontName":Ljava/lang/String;
    .local v15, "question":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b0704

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 848
    .restart local v16    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 856
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v11

    .line 857
    .local v11, "fontName":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .local v15, "question":Ljava/lang/String;
    goto/16 :goto_0

    .line 897
    .end local v11    # "fontName":Ljava/lang/String;
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    .restart local v6    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v17    # "selectedFont":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x1

    .local v12, "isDefaultFontSelected":Z
    goto/16 :goto_3

    .line 898
    .end local v12    # "isDefaultFontSelected":Z
    :cond_d
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 880
    .end local v17    # "selectedFont":Ljava/lang/String;
    .restart local v5    # "apkname":Ljava/lang/String;
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2

    .line 866
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v10

    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 35

    .prologue
    .line 1250
    const-string/jumbo v30, ""

    .line 1251
    .local v30, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v31

    .line 1254
    .local v31, "themePath":Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 1255
    .local v20, "endIndex":I
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v30

    .line 1256
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

    .line 1392
    .end local v20    # "endIndex":I
    .end local v31    # "themePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    .line 1395
    .local v12, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->REBOOT:Z

    if-nez v2, :cond_12

    .line 1398
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1406
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 1408
    .local v15, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/content/res/Configuration;->FlipFont:I

    .line 1409
    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1413
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

    .line 1414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPackageName:Ljava/lang/String;

    .line 1415
    const/4 v2, 0x1

    return v2

    .line 1258
    .end local v12    # "am":Landroid/app/IActivityManager;
    :cond_1
    const/16 v21, 0x0

    .line 1260
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

    .line 1262
    const/4 v5, 0x0

    .line 1264
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    .line 1266
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

    .line 1273
    .end local v5    # "apkname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1274
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1276
    const/4 v2, 0x0

    return v2

    .line 1267
    .restart local v5    # "apkname":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 1269
    .local v17, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    return v2

    .line 1279
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v17    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 1280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    .line 1285
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

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 1289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1296
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

    .line 1298
    .restart local v30    # "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreview;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 1302
    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    .line 1305
    .local v3, "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    if-eqz v30, :cond_5

    const-string/jumbo v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1306
    :cond_5
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    if-nez v30, :cond_0

    .line 1314
    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const/4 v2, 0x0

    return v2

    .line 1282
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    goto/16 :goto_3

    .line 1321
    .restart local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v29

    .line 1323
    .local v29, "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    move-object/from16 v28, v30

    .line 1324
    .local v28, "sFontDir":Ljava/lang/String;
    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v25

    .line 1326
    .local v25, "index":I
    if-lez v25, :cond_8

    .line 1327
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1330
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1332
    .local v4, "fontDir":Ljava/io/File;
    const/16 v32, 0x0

    .line 1334
    .local v32, "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    if-eqz v29, :cond_9

    .line 1335
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

    .line 1336
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    .line 1340
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

    .line 1341
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

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1343
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v26

    .line 1345
    .local v26, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    .line 1346
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

    .line 1347
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

    .line 1348
    .local v24, "in":Ljava/io/InputStream;
    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v21

    .line 1349
    .local v21, "err_filecopy":Z
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1335
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "assetManager":Landroid/content/res/AssetManager;
    .end local v24    # "in":Ljava/io/InputStream;
    .end local v26    # "res":Landroid/content/res/Resources;
    :goto_5
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 1350
    .end local v21    # "err_filecopy":Z
    :catch_1
    move-exception v22

    .line 1352
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

    .line 1357
    .end local v21    # "err_filecopy":Z
    .end local v22    # "ex":Ljava/lang/Exception;
    .end local v23    # "i":I
    .end local v32    # "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    :cond_9
    if-eqz v21, :cond_b

    .line 1364
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreview;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1365
    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreview;->badFontDialog(Ljava/lang/String;)V

    .line 1372
    const/4 v2, 0x0

    return v2

    .line 1375
    :cond_b
    sput-object v30, Lcom/samsung/android/settings/display/FontPreview;->persistString:Ljava/lang/String;

    .line 1377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreview;->savePreferences()V

    .line 1381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mPreviousFont:I

    .line 1385
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

    .line 1386
    :catch_2
    move-exception v19

    .line 1387
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

    .line 1399
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .end local v25    # "index":I
    .end local v28    # "sFontDir":Ljava/lang/String;
    .end local v29    # "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    .restart local v12    # "am":Landroid/app/IActivityManager;
    :catch_3
    move-exception v18

    .line 1401
    .local v18, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1419
    .end local v18    # "e":Ljava/lang/InterruptedException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 1420
    .local v10, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 1421
    .local v11, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v23, 0x1

    .line 1423
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

    .line 1424
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 1426
    .local v27, "s":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1427
    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1428
    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1429
    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1430
    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    .line 1440
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6

    .line 1431
    :cond_f
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1432
    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1433
    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1434
    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1435
    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1436
    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1437
    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1438
    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1439
    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1442
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1443
    const-string/jumbo v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 1444
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1447
    :cond_10
    const-string/jumbo v2, "com.sec.android.app.camera"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    .line 1448
    const-string/jumbo v2, "FontPreview"

    const-string/jumbo v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1450
    :cond_11
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1464
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "aTask$iterator":Ljava/util/Iterator;
    .end local v10    # "activityManager":Landroid/app/ActivityManager;
    .end local v11    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v23    # "i":I
    .end local v27    # "s":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x1

    return v2

    .line 1410
    :catch_4
    move-exception v16

    .local v16, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mBixbyCurrentStatesId:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 1708
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 1705
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 1680
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 1681
    iget-boolean v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFromSetupWizard:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v9, :cond_0

    .line 1682
    iget-boolean v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsRunLoadListTask:Z

    if-nez v9, :cond_0

    .line 1683
    new-instance v9, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreview;Lcom/samsung/android/settings/display/FontPreview$LoadListTask;)V

    iput-object v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    .line 1684
    iget-object v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreview$LoadListTask;

    new-array v10, v7, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/display/FontPreview$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1685
    const-string/jumbo v9, "FontPreview onResume"

    const-string/jumbo v10, "called onResume()"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v9, :cond_3

    .line 1689
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "easy_mode_switch"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    const/4 v1, 0x1

    .line 1690
    .local v1, "isEasyMode":Z
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/display/FontPreview;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v10, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v6, v7

    :cond_2
    invoke-virtual {v9, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setEnabled(Z)V

    .line 1691
    const v6, 0x7f110411

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1692
    .local v5, "screenSizeLabel":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f0d00ed

    :goto_1
    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1693
    .local v2, "labelColor":I
    const v6, 0x7f110412

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1694
    .local v4, "labelMin":Landroid/widget/TextView;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1695
    const v6, 0x7f110413

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1696
    .local v3, "labelMax":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1697
    if-eqz v1, :cond_6

    move v6, v8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1698
    const v6, 0x7f110410

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1699
    .local v0, "easyModeDesc":Landroid/widget/TextView;
    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1701
    .end local v0    # "easyModeDesc":Landroid/widget/TextView;
    .end local v1    # "isEasyMode":Z
    .end local v2    # "labelColor":I
    .end local v3    # "labelMax":Landroid/widget/TextView;
    .end local v4    # "labelMin":Landroid/widget/TextView;
    .end local v5    # "screenSizeLabel":Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreview;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 1679
    return-void

    .line 1689
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isEasyMode":Z
    goto :goto_0

    .line 1692
    .restart local v5    # "screenSizeLabel":Landroid/widget/LinearLayout;
    :cond_5
    const v6, 0x7f0d00ec

    goto :goto_1

    .restart local v2    # "labelColor":I
    .restart local v3    # "labelMax":Landroid/widget/TextView;
    .restart local v4    # "labelMin":Landroid/widget/TextView;
    :cond_6
    move v6, v7

    .line 1697
    goto :goto_2

    .restart local v0    # "easyModeDesc":Landroid/widget/TextView;
    :cond_7
    move v7, v8

    .line 1699
    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1606
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1607
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1608
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1605
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1555
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreview;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_0
    return-void

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FontPreview"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 1231
    const/4 v1, 0x0

    .line 1232
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1235
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1237
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1238
    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreview;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1229
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1469
    const/4 v1, 0x0

    .line 1470
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1472
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1474
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1476
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1467
    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 5
    .param p1, "fontFloatSize"    # F

    .prologue
    .line 1536
    move v0, p1

    .line 1537
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

    .line 1539
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1540
    .local v1, "largeFontScale":F
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    .line 1541
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1544
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1545
    move v0, v1

    .line 1549
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreview;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 1534
    return-void
.end method
