.class public Lcom/samsung/android/settings/display/FontPreviewTablet;
.super Lcom/android/internal/app/AlertActivity;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;
    }
.end annotation


# static fields
.field private static final APK_NAME_LIST:[Ljava/lang/String;

.field private static CHANGE_MODE_FONT_SIZE:I

.field private static CHANGE_MODE_FONT_STYLE:I

.field private static CHANGE_MODE_SCREEN_SIZE:I

.field public static DEBUG:Z

.field public static REBOOT:Z

.field private static persistString:Ljava/lang/String;

.field public static sSelectedFontSizeSeekBarProgress:I


# instance fields
.field private mAccessFontOnOff:I

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

.field private mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mFontSizeStrings:[Ljava/lang/String;

.field private mFontStyleListView:Landroid/widget/ListView;

.field private mFontSwitch:Landroid/widget/Switch;

.field private mHugeString:Ljava/lang/String;

.field private mIsAccessibilitySettingsVision:Z

.field private mIsChangedFontSizeSeekBar:Z

.field private mIsChangedScreenSizeSeekBar:Z

.field private mIsCheckPlatformSignatures:Z

.field private mIsCheckReleaseSignatures:Z

.field private mIsClickSwitch:Z

.field private mIsFont11Level:Z

.field private mIsFontLargerOn:Z

.field private mIsFromSetupWizard:Z

.field mIsSelectedCurrentThemeFont:Z

.field private mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

.field private mMaxTextView:Landroid/widget/TextSwitcher;

.field private mMinTextView:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field private mPreviewSampleResIds:[I

.field private mPreviousFont:I

.field private mSavedClickedItem:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mSelectedFontSize:I

.field private mSelectedFontStyleItemIndex:I

.field private mSelectedScreenSize:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mShowForHugeFontTextView:Landroid/widget/TextView;

.field private mThemeFontTypeface:Landroid/graphics/Typeface;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/FontPreviewTablet;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/samsung/android/settings/widget/IntervalSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/display/FontPreviewTablet;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/display/FontPreviewTablet;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/flipfont/FontListAdapter;)Lcom/samsung/android/settings/flipfont/FontListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/display/FontPreviewTablet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/FontPreviewTablet;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getFontNameFromSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setFontStyleList(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    .line 159
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 160
    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    .line 161
    const-string/jumbo v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v4

    .line 162
    const-string/jumbo v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v5

    .line 163
    const-string/jumbo v1, "com.monotype.android.font.helvneuelt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    .line 165
    const-string/jumbo v1, "com.monotype.android.font.rosemary"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "com.monotype.android.font.applemint"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "com.monotype.android.font.tinkerbell"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "com.monotype.android.font.udrgothic"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "com.monotype.android.font.udmincho"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "com.monotype.android.font.arjpopb"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "com.monotype.android.font.kaiti"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "com.monotype.android.font.shaonv"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "com.monotype.android.font.miao"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 159
    sput-object v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    .line 198
    sput v4, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    .line 199
    sput v5, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    .line 200
    sput v6, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    .line 1024
    sput-boolean v3, Lcom/samsung/android/settings/display/FontPreviewTablet;->REBOOT:Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 99
    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 100
    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    .line 103
    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 107
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    .line 176
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    .line 177
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    .line 178
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    .line 180
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 181
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    .line 182
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    .line 183
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    .line 184
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    .line 186
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 192
    const v0, 0x7f040260

    .line 193
    const v1, 0x7f040262

    .line 191
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    .line 1422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    .line 85
    return-void
.end method

.method private changeFontSizeFromSeekBar(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    const/4 v6, 0x1

    .line 620
    const/high16 v0, 0x3f800000    # 1.0f

    .line 621
    .local v0, "fontsize":F
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 622
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 627
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 628
    .local v2, "previousFontSize":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 630
    .local v1, "mPreviewTextSize":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v3, v1, v0}, Lcom/android/settings/PreviewPagerAdapter;->SetFontScale(IF)V

    .line 631
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 632
    sput p1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    .line 633
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontFloatSize:F

    .line 619
    return-void

    .line 624
    .end local v1    # "mPreviewTextSize":I
    .end local v2    # "previousFontSize":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1563
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 1564
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "fontWriter"    # Lcom/samsung/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 1259
    .local v3, "err_filecopy":Z
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1265
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

    .line 1266
    .local v5, "uriFont":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1269
    .local v4, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1276
    .local v4, "isFont":Ljava/io/InputStream;
    invoke-virtual {p1, p2, v4, p5}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v3

    .line 1279
    .local v3, "err_filecopy":Z
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1283
    :goto_0
    return v3

    .line 1260
    .end local v4    # "isFont":Ljava/io/InputStream;
    .end local v5    # "uriFont":Landroid/net/Uri;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v3, "err_filecopy":Z
    :catch_0
    move-exception v1

    .line 1261
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 1270
    .end local v1    # "e":Ljava/lang/Exception;
    .local v0, "cr":Landroid/content/ContentResolver;
    .local v4, "isFont":Ljava/io/InputStream;
    .restart local v5    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 1272
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return v6

    .line 1280
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

    .line 907
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessiblity_font_switch"

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 911
    :cond_1
    const/4 v0, 0x0

    .line 912
    .local v0, "changeMode":I
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedFontSizeSeekBar:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    if-eq v1, v2, :cond_2

    .line 913
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    if-ltz v1, :cond_2

    .line 914
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    or-int/lit8 v0, v1, 0x0

    .line 917
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsChangedScreenSizeSeekBar:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedScreenSize:I

    if-eq v1, v2, :cond_3

    .line 918
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    if-ltz v1, :cond_3

    .line 919
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    or-int/2addr v0, v1

    .line 922
    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    if-ltz v1, :cond_4

    .line 923
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    or-int/2addr v0, v1

    .line 926
    :cond_4
    if-nez v0, :cond_5

    .line 927
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    .line 928
    return-void

    .line 930
    :cond_5
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontStyleOrFontSize(I)V

    .line 906
    return-void
.end method

.method private doneFontSize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 964
    sget v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->sSelectedFontSizeSeekBarProgress:I

    .line 965
    .local v0, "fontIndex":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 966
    .local v2, "previousIndex":I
    const-string/jumbo v3, "FontPreviewTablet"

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

    .line 968
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "font_size"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 970
    iget-boolean v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_0

    .line 971
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 973
    const-string/jumbo v3, "FontPreviewTablet"

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

    .line 974
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 963
    :goto_0
    return-void

    .line 975
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-gt v2, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    if-le v0, v3, :cond_1

    .line 976
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 978
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 979
    const-string/jumbo v3, "FontPreviewTablet"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 981
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .restart local v1    # "i":Landroid/content/Intent;
    const-string/jumbo v3, "large_font"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 984
    const-string/jumbo v3, "FontPreviewTablet"

    const-string/jumbo v4, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doneFontStyleOrFontSize(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 938
    const-string/jumbo v1, "FontPreviewTablet"

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

    .line 939
    const/4 v0, 0x0

    .line 940
    .local v0, "isAvailableFont":I
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_STYLE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 941
    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_STYLE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    .line 943
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->onOkButtonPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 946
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 947
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_FONT_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 948
    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_FONT_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontSize()V

    .line 950
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontFloatSize:F

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->writeFontSizePreference(F)V

    .line 951
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->readFontSizePreference()V

    .line 954
    :cond_1
    sget v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->CHANGE_MODE_SCREEN_SIZE:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_2

    .line 955
    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "doneFontStyleOrFontSize CHANGE_MODE_SCREEN_SIZE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->ApplyForcedDisplayDensity(Landroid/content/Context;I)V

    .line 958
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    .line 937
    :cond_3
    return-void

    .line 943
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getFontNameFromSystem()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1540
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1542
    .local v0, "mSelectedFontSize":I
    const/4 v1, 0x0

    .line 1543
    .local v1, "mode":I
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "prefs"

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1545
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1546
    .local v3, "selectedFont":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1547
    .local v4, "temp":[Ljava/lang/String;
    const-string/jumbo v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1548
    .local v4, "temp":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-lez v5, :cond_0

    .line 1549
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v3, v4, v5

    .line 1554
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

    .line 1555
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b05ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "selectedFont":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1559
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1557
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/settings/Utils;->getFontName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private setAccessiblityFontSizeView(Z)V
    .locals 7
    .param p1, "isFont11Level"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 452
    if-eqz p1, :cond_0

    .line 453
    const v2, 0x7f1103c3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 454
    .local v0, "layoutLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const v2, 0x7f1103c6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 458
    .local v1, "switchDividerView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    const v2, 0x7f1103c5

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    .line 461
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 462
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 464
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b05fb

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    .line 451
    .end local v0    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .end local v1    # "switchDividerView":Landroid/view/View;
    :cond_0
    return-void

    .restart local v0    # "layoutLinearLayout":Landroid/widget/LinearLayout;
    .restart local v1    # "switchDividerView":Landroid/view/View;
    :cond_1
    move v2, v4

    .line 462
    goto :goto_0

    :cond_2
    move v3, v4

    .line 465
    goto :goto_1
.end method

.method private setDim(ZZ)V
    .locals 3
    .param p1, "isChecked"    # Z
    .param p2, "isPressed"    # Z

    .prologue
    const v2, 0x7f0d0165

    .line 470
    if-eqz p1, :cond_5

    .line 471
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 475
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f02057f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 491
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    if-eqz v0, :cond_3

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->animationStart(Z)V

    .line 495
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->invalidate()V

    .line 469
    :cond_4
    return-void

    .line 481
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    if-eqz v0, :cond_6

    .line 482
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const v1, 0x7f02057e

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setDrawable(I)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOverlapBackgroundForDualColor(I)V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setFontStyleList(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 518
    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 522
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->isCurrentThemeFontSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 528
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v6

    .line 529
    .local v6, "currentThemeFontPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v6    # "currentThemeFontPath":Ljava/lang/String;
    .end local v8    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setReHeightFontStyleListview()V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->loadPreferences()V

    .line 562
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setSelectedFontStyle()V

    .line 563
    if-eqz p1, :cond_2

    .line 564
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 566
    .local v3, "userSelectedStyleIndex":I
    const/4 v0, -0x1

    if-le v3, v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 568
    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 517
    .end local v3    # "userSelectedStyleIndex":I
    :cond_2
    return-void

    .line 534
    :catch_0
    move-exception v7

    .line 535
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFontsizeLayoutSevenOrEleven(Z)V
    .locals 10
    .param p1, "isFont11Level"    # Z

    .prologue
    const v9, 0x7f1103d1

    const v7, 0x7f1103d0

    const/4 v8, 0x0

    .line 389
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 390
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 392
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v5, 0x7f0b05c8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 393
    const v5, 0x7f040116

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 394
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 395
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 396
    const v5, 0x7f0b1202

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 397
    const v5, 0x7f0b163c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setupAlert()V

    .line 400
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 401
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 403
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d01ce

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 404
    .local v4, "tint_list":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 405
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 406
    const v5, 0x7f1103c8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    .line 408
    const v5, 0x7f1103cf

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextSwitcher;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    .line 409
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    new-instance v6, Lcom/samsung/android/settings/display/FontPreviewTablet$5;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$5;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 421
    const/high16 v5, 0x10a0000

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 422
    .local v1, "in":Landroid/view/animation/Animation;
    const v5, 0x10a0001

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 423
    .local v3, "out":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 424
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    invoke-virtual {v5, v3}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 426
    if-eqz p1, :cond_2

    .line 427
    const v5, 0x7f1103ce

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMinTextView:Landroid/widget/TextView;

    .line 428
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mHugeString:Ljava/lang/String;

    .line 429
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0203

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    .line 430
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->semSetOverlapPointForDualColor(I)V

    .line 432
    iget v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    if-nez v5, :cond_1

    .line 433
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b05f9

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b05fa

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 438
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mMaxTextView:Landroid/widget/TextSwitcher;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraHugeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-boolean v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    if-nez v5, :cond_0

    .line 441
    const/4 v5, 0x1

    invoke-direct {p0, v5, v8}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    goto :goto_0

    .line 445
    :cond_2
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    .line 446
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 447
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const v7, 0x7f020459

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setReHeightFontStyleListview()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 574
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 575
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 576
    .local v0, "adapterCount":I
    const/4 v5, 0x0

    .line 577
    .local v5, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 578
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-interface {v6, v1, v8, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 579
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v9, v9}, Landroid/view/View;->measure(II)V

    .line 580
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "listItem":Landroid/view/View;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 584
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 585
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v6, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->requestLayout()V

    .line 588
    const v6, 0x7f1103c9

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 589
    .local v4, "scrollView":Landroid/widget/ScrollView;
    new-instance v6, Lcom/samsung/android/settings/display/FontPreviewTablet$6;

    invoke-direct {v6, p0, v4}, Lcom/samsung/android/settings/display/FontPreviewTablet$6;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Landroid/widget/ScrollView;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 573
    .end local v0    # "adapterCount":I
    .end local v1    # "i":I
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "scrollView":Landroid/widget/ScrollView;
    .end local v5    # "totalHeight":I
    :cond_1
    return-void
.end method

.method private setSelectedFontStyle()V
    .locals 5

    .prologue
    .line 853
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_0

    .line 854
    return-void

    .line 857
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_2

    .line 858
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeFontIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 895
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 852
    return-void

    .line 860
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v1

    .line 862
    .local v1, "selectedFont":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 863
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 868
    .local v0, "okButton":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const-string/jumbo v2, "MONOTYPE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 874
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const-string/jumbo v1, "default"

    .line 877
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 878
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :goto_2
    iget v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    if-gez v2, :cond_1

    .line 889
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    goto/16 :goto_0

    .line 865
    .end local v0    # "okButton":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "okButton":Ljava/lang/String;
    goto/16 :goto_1

    .line 882
    :cond_4
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v3, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 884
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private update7StepFontsizeList()V
    .locals 7

    .prologue
    .line 601
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 603
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c0038

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "fontSizeNames":[Ljava/lang/String;
    iput-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeStrings:[Ljava/lang/String;

    .line 607
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c012f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "values":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    .line 612
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 613
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFloatRevisedValueList:Ljava/util/ArrayList;

    aget-object v6, v4, v1

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 616
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCharSeqRevisedValues:Ljava/util/ArrayList;

    .line 598
    return-void
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 1369
    move-object v1, p1

    .line 1371
    .local v1, "deletePackageName":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
    const v3, 0x7f0b05e8

    .line 1371
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1373
    const v3, 0x7f0b05e9

    .line 1371
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1374
    const v3, 0x1080027

    .line 1371
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1375
    new-instance v3, Lcom/samsung/android/settings/display/FontPreviewTablet$8;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/display/FontPreviewTablet$8;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Ljava/lang/String;)V

    const v4, 0x104000a

    .line 1371
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1395
    new-instance v3, Lcom/samsung/android/settings/display/FontPreviewTablet$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$9;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    const/high16 v4, 0x1040000

    .line 1371
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1404
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/samsung/android/settings/display/FontPreviewTablet$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$10;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1413
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1368
    return-void
.end method

.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1569
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200cd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1567
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 21
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 740
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 741
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

    .line 744
    :cond_0
    const-string/jumbo v18, "com.monotype.android.font.foundation"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 745
    const/16 v18, 0x0

    return v18

    .line 749
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 750
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    sget-object v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 751
    if-eqz p1, :cond_4

    sget-object v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v18, v18, v11

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 752
    const-string/jumbo v18, "android"

    sget-object v19, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

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

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Lcom/samsung/android/settings/display/FontPreviewTablet;->APK_NAME_LIST:[Ljava/lang/String;

    aget-object v19, v19, v11

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->isSignatureMatch(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    .line 754
    const-string/jumbo v18, "FontPreviewTablet"

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

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", mIsCheckReleaseSignatures : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckPlatformSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsCheckReleaseSignatures:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const-string/jumbo v18, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 756
    :cond_2
    const/16 v18, 0x0

    return v18

    .line 752
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 750
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 761
    :cond_5
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_6

    .line 762
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "checkFont - check if valid certificate"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_6
    const/4 v15, 0x0

    .line 768
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

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

    .line 772
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    if-eqz v15, :cond_c

    .line 773
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    .line 775
    .local v17, "signatures":[Landroid/content/pm/Signature;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 777
    .local v4, "cert":[B
    :try_start_1
    const-string/jumbo v18, "SHA"

    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v14

    .line 778
    .local v14, "md":Ljava/security/MessageDigest;
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 779
    invoke-virtual {v14}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 780
    .local v7, "currentSignature":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 783
    const-string/jumbo v18, "T84drf8v3ZMOLvt2SFG/K7ODXgI="

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 784
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 785
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_7
    const/16 v18, 0x0

    return v18

    .line 788
    :cond_8
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 789
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Signature is incorrect**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 790
    :cond_9
    const/16 v18, 0x1

    return v18

    .line 792
    .end local v7    # "currentSignature":Ljava/lang/String;
    .end local v14    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v8

    .line 793
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 796
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 797
    .local v12, "input":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 800
    .local v6, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_2
    const-string/jumbo v18, "X509"

    invoke-static/range {v18 .. v18}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 806
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :goto_3
    const/4 v3, 0x0

    .line 809
    .local v3, "c":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v6, v12}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v3, v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 815
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    :goto_4
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_a

    .line 816
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

    .line 817
    if-eqz v3, :cond_a

    .line 818
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

    .line 819
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

    .line 820
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

    .line 821
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

    .line 822
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

    .line 827
    :cond_a
    const-string/jumbo v5, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 829
    .local v5, "certIssuedByString":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 830
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 832
    .local v13, "issuderDNString":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 833
    sget-boolean v18, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v18, :cond_b

    .line 834
    const-string/jumbo v18, "FlipFont"

    const-string/jumbo v19, "**Certificate data is correct**"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_b
    const/16 v18, 0x0

    return v18

    .line 801
    .end local v5    # "certIssuedByString":Ljava/lang/String;
    .end local v13    # "issuderDNString":Ljava/lang/String;
    .restart local v6    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_1
    move-exception v9

    .line 803
    .local v9, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    .line 810
    .end local v6    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "c":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v9

    .line 812
    .restart local v9    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 840
    .end local v3    # "c":Ljava/security/cert/X509Certificate;
    .end local v4    # "cert":[B
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "input":Ljava/io/InputStream;
    .end local v17    # "signatures":[Landroid/content/pm/Signature;
    :cond_c
    const/16 v18, 0x1

    return v18

    .line 769
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_3
    move-exception v10

    .local v10, "ex":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method protected errorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1289
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-nez p1, :cond_0

    .line 1290
    return-void

    .line 1294
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1296
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1298
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1300
    new-instance v1, Lcom/samsung/android/settings/display/FontPreviewTablet$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/FontPreviewTablet$7;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1286
    return-void
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 900
    const/4 v0, 0x0

    .line 901
    .local v0, "mode":I
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 903
    .local v1, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "selectedFont"

    const-string/jumbo v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 990
    const/4 v2, 0x0

    .line 991
    .local v2, "mode":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 994
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "SavedClickedItem"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    .line 995
    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    .line 996
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 998
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 999
    iget-object v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1000
    const-string/jumbo v4, "FontPreviewTablet"

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

    .line 1001
    iput v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    .line 988
    :goto_0
    return-void

    .line 1003
    :cond_0
    iput v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 846
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 504
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    .line 505
    .local v0, "isPressed":Z
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setDim(ZZ)V

    .line 506
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 503
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1361
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1362
    invoke-direct {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->doneFontPreview()V

    .line 1360
    :goto_0
    return-void

    .line 1364
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 512
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsClickSwitch:Z

    .line 513
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 510
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 204
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedInstanceState:Landroid/os/Bundle;

    .line 207
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->getFontSize(Landroid/content/Context;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v8, v0

    .line 210
    .local v8, "fontArraySize":I
    const-string/jumbo v20, "fontArraySize"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fontArraySize:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v20, 0xb

    move/from16 v0, v20

    if-ne v8, v0, :cond_6

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 214
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 216
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "accessiblity_font_switch"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    .line 219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mAccessFontOnOff:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 220
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 226
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_9

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string/jumbo v21, "isAccessibilitySettingsVision"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 229
    const v20, 0x7f0b05c8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 231
    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    .line 234
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "device_provisioned"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    .line 239
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setFontsizeLayoutSevenOrEleven(Z)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsAccessibilitySettingsVision:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 242
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setAccessiblityFontSizeView(Z)V

    .line 244
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFromSetupWizard:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 245
    const v20, 0x7f1103d3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 246
    .local v9, "fontStyle":Landroid/widget/LinearLayout;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    .end local v9    # "fontStyle":Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->getProperTabletDensities(Landroid/content/Context;)[I

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 252
    .local v15, "origConfig":Landroid/content/res/Configuration;
    invoke-virtual {v15}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/4 v13, 0x1

    .line 253
    .local v13, "isLayoutRtl":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v5, v0, [Landroid/content/res/Configuration;

    .line 254
    .local v5, "configurations_list":[Landroid/content/res/Configuration;
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v12

    .line 256
    :goto_5
    const-string/jumbo v20, "FontPreview onCreate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mDensities.length"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settings/Utils;->getCurrentDensity(Landroid/content/Context;)I

    move-result v7

    .line 258
    .local v7, "currentDensity":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_d

    .line 259
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v15}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 260
    .local v4, "config":Landroid/content/res/Configuration;
    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v20, v0

    aget v20, v20, v10

    move/from16 v0, v20

    iput v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 261
    :cond_4
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    iput v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 262
    aput-object v4, v5, v10

    .line 263
    const-string/jumbo v20, "FontPreview onCreate"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "config.densityDpi "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v20, v0

    aget v20, v20, v10

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    .line 258
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 211
    .end local v4    # "config":Landroid/content/res/Configuration;
    .end local v5    # "configurations_list":[Landroid/content/res/Configuration;
    .end local v7    # "currentDensity":I
    .end local v10    # "i":I
    .end local v13    # "isLayoutRtl":Z
    .end local v15    # "origConfig":Landroid/content/res/Configuration;
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 222
    :cond_7
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFontLargerOn:Z

    .line 223
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    goto/16 :goto_1

    .line 234
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 236
    :cond_9
    const v20, 0x7f0b05c8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 252
    .restart local v15    # "origConfig":Landroid/content/res/Configuration;
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "isLayoutRtl":Z
    goto/16 :goto_4

    .line 255
    .restart local v5    # "configurations_list":[Landroid/content/res/Configuration;
    :cond_b
    const/4 v12, 0x1

    .local v12, "isDesktopEnabled":Z
    goto/16 :goto_5

    .line 254
    .end local v12    # "isDesktopEnabled":Z
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "isDesktopEnabled":Z
    goto/16 :goto_5

    .line 266
    .end local v12    # "isDesktopEnabled":Z
    .restart local v7    # "currentDensity":I
    .restart local v10    # "i":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedScreenSize:I

    .line 268
    const v20, 0x7f110624

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 269
    .local v14, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d0243

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0735

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 271
    .local v18, "sidePadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0736

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 272
    .local v19, "topPadding":I
    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 274
    const v20, 0x7f1105ae

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    .line 275
    new-instance v20, Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v22, v0

    .line 275
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v13, v2, v5}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    :goto_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/settings/display/FontPreviewTablet$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$1;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 295
    const v20, 0x7f1103dd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewSampleResIds:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v17, v0

    .line 298
    .local v17, "pointCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 299
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_f

    .line 300
    move v6, v10

    .line 302
    .local v6, "current":I
    const v20, 0x7f040071

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 303
    .local v16, "point":Landroid/widget/ImageView;
    const v20, 0x7f0b09a5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    add-int/lit8 v22, v10, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x1

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v20, Lcom/samsung/android/settings/display/FontPreviewTablet$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/display/FontPreviewTablet$2;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 278
    .end local v6    # "current":I
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "point":Landroid/widget/ImageView;
    .end local v17    # "pointCount":I
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_7

    .line 312
    .restart local v11    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "pointCount":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v20

    if-lez v20, :cond_10

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    const v21, 0x7f0200cd

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    :cond_10
    const v20, 0x7f1103cd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mDensities:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setMax(I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mScreenSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/settings/display/FontPreviewTablet$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$3;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->update7StepFontsizeList()V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "font_size"

    const/16 v22, 0x2

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    .line 341
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->changeFontSizeFromSeekBar(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentFontIndex:I

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mExtraLargeFontIndex:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mShowForHugeFontTextView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontSizeSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/settings/display/FontPreviewTablet$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$4;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurrentDensityIndex:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(I)V

    .line 377
    const v20, 0x7f1103d4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontStyleListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 380
    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 381
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 382
    new-instance v20, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;-><init>(Lcom/samsung/android/settings/display/FontPreviewTablet;Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/high16 v21, 0x20000

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->clearFlags(I)V

    .line 203
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1522
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 1524
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    if-eqz v1, :cond_1

    .line 1526
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1527
    .local v0, "loadListTaskProgressDialog":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1530
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mLoadListTask:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->cancel(Z)Z

    .line 1533
    .end local v0    # "loadListTaskProgressDialog":Landroid/app/ProgressDialog;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v1, :cond_2

    .line 1534
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-static {}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 1535
    iput-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1521
    :cond_2
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
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
    .line 638
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v15, :cond_0

    .line 639
    return-void

    .line 642
    :cond_0
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 644
    const/4 v12, 0x0

    .line 645
    .local v12, "question":Ljava/lang/String;
    const/4 v9, 0x0

    .line 646
    .local v9, "fontName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 648
    .local v11, "press_apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v15, v15, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 652
    .end local v11    # "press_apkname":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b05fd

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 653
    .local v6, "download_font":Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 658
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b05e3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 659
    .local v14, "uri":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v10, "intent":Landroid/content/Intent;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 661
    const v15, 0x14000020

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v15, v10}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 664
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b05e2

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "uri":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 665
    .restart local v14    # "uri":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v16, "android.intent.action.VIEW"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    .line 666
    const v15, 0x14000020

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v14    # "uri":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    .line 673
    return-void

    .line 669
    :catch_0
    move-exception v7

    .line 670
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 676
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getCurrentThemeString()Ljava/lang/String;

    move-result-object v5

    .line 677
    .local v5, "currentThemeFont":Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    if-eqz v15, :cond_4

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mThemeFontTypeface:Landroid/graphics/Typeface;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 682
    :cond_4
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 683
    return-void

    .line 685
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    .line 688
    const/4 v15, 0x1

    move/from16 v0, p3

    if-ge v0, v15, :cond_b

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b05df

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 690
    .local v13, "s":Ljava/lang/String;
    move-object v12, v13

    .line 706
    .end local v9    # "fontName":Ljava/lang/String;
    .local v12, "question":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 707
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    .line 709
    .local v4, "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-eqz v4, :cond_6

    .line 711
    const/4 v15, 0x1

    :try_start_1
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v15, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 714
    :cond_6
    :goto_2
    const-string/jumbo v15, "FlipFont"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "pkgName1:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    if-eqz v15, :cond_7

    .line 717
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mChangingSizeText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontTypeface(I)Landroid/graphics/Typeface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/settings/PreviewPagerAdapter;->SetFontStyle(Landroid/graphics/Typeface;)V

    .line 721
    :cond_7
    const/4 v3, 0x0

    .line 722
    .local v3, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v15, :cond_8

    .line 724
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v15, v15, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 729
    .end local v3    # "apkname":Ljava/lang/String;
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 730
    sget-boolean v15, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v15, :cond_9

    .line 731
    const-string/jumbo v15, "FlipFont"

    const-string/jumbo v16, "**onOkButtonPressed - bad font**"

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/display/FontPreviewTablet;->badFontDialog(Ljava/lang/String;)V

    .line 637
    :cond_a
    return-void

    .line 692
    .end local v2    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v13    # "s":Ljava/lang/String;
    .restart local v9    # "fontName":Ljava/lang/String;
    .local v12, "question":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b05e1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 694
    .restart local v13    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v15, :cond_c

    .line 696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 697
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 700
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v15}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 702
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v9

    .line 703
    .local v9, "fontName":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v9, v15, v16

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "question":Ljava/lang/String;
    goto/16 :goto_1

    .line 725
    .end local v9    # "fontName":Ljava/lang/String;
    .restart local v2    # "activityManager":Landroid/app/ActivityManager;
    .restart local v3    # "apkname":Ljava/lang/String;
    .restart local v4    # "bgAppTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catch_1
    move-exception v8

    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_3

    .line 712
    .end local v3    # "apkname":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v8

    .restart local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_2
.end method

.method public onOkButtonPressed()Z
    .locals 37

    .prologue
    .line 1027
    const-string/jumbo v31, ""

    .line 1028
    .local v31, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsSelectedCurrentThemeFont:Z

    if-eqz v2, :cond_1

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getThemeFontCurrentPath()Ljava/lang/String;

    move-result-object v32

    .line 1031
    .local v32, "themePath":Ljava/lang/String;
    const/16 v2, 0x2f

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    .line 1032
    .local v21, "endIndex":I
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v6, 0x0

    move/from16 v0, v21

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v31

    .line 1033
    const-string/jumbo v2, "persist.sys.flipfontpath"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#Theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    .end local v21    # "endIndex":I
    .end local v32    # "themePath":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    .line 1167
    .local v12, "am":Landroid/app/IActivityManager;
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreviewTablet;->REBOOT:Z

    if-nez v2, :cond_13

    .line 1170
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1178
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    .line 1180
    .local v15, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Landroid/content/res/Configuration;->FlipFont:I

    .line 1181
    invoke-interface {v12, v15}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1185
    .end local v15    # "config":Landroid/content/res/Configuration;
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1186
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPackageName:Ljava/lang/String;

    .line 1187
    const/4 v2, 0x1

    return v2

    .line 1035
    .end local v12    # "am":Landroid/app/IActivityManager;
    :cond_1
    const/16 v22, 0x0

    .line 1037
    .local v22, "err_filecopy":Z
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v5, 0x0

    .line 1041
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_2

    .line 1043
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 1049
    .end local v5    # "apkname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/display/FontPreviewTablet;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1051
    const/4 v2, 0x0

    return v2

    .line 1044
    .restart local v5    # "apkname":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 1045
    .local v18, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    return v2

    .line 1054
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 1055
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 1060
    :goto_3
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_4

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    .line 1065
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setInitDownloadFontAndThemeFont()V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 1071
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "selectedFont":Ljava/lang/String;
    check-cast v31, Ljava/lang/String;

    .line 1073
    .restart local v31    # "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/FontPreviewTablet;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 1077
    new-instance v3, Lcom/samsung/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/samsung/android/settings/flipfont/FontWriter;-><init>()V

    .line 1080
    .local v3, "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    if-eqz v31, :cond_5

    const-string/jumbo v2, "default"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1081
    :cond_5
    sput-object v31, Lcom/samsung/android/settings/display/FontPreviewTablet;->persistString:Ljava/lang/String;

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    const-string/jumbo v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    if-nez v31, :cond_0

    .line 1087
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/4 v2, 0x0

    return v2

    .line 1057
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    goto/16 :goto_3

    .line 1094
    .restart local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/samsung/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/samsung/android/settings/flipfont/Typeface;

    move-result-object v30

    .line 1096
    .local v30, "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    move-object/from16 v29, v31

    .line 1097
    .local v29, "sFontDir":Ljava/lang/String;
    const-string/jumbo v2, ".xml"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 1099
    .local v26, "index":I
    if-lez v26, :cond_8

    .line 1100
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    .line 1103
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1105
    .local v4, "fontDir":Ljava/io/File;
    const/16 v33, 0x0

    .line 1107
    .local v33, "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    if-eqz v30, :cond_9

    .line 1108
    const/16 v24, 0x0

    .end local v22    # "err_filecopy":Z
    .end local v33    # "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    .local v24, "i":I
    :goto_4
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_9

    .line 1109
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/samsung/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v24

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/samsung/android/settings/flipfont/TypefaceFile;

    .line 1113
    .local v33, "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1114
    .local v5, "apkname":Ljava/lang/String;
    const-string/jumbo v2, "FontPreviewTablet"

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

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 1116
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v13, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v13, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v27

    .line 1118
    .local v27, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    .line 1119
    .local v14, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v25

    .line 1120
    .local v25, "in":Ljava/io/InputStream;
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0, v2}, Lcom/samsung/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v22

    .line 1121
    .local v22, "err_filecopy":Z
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1108
    .end local v5    # "apkname":Ljava/lang/String;
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "assetManager":Landroid/content/res/AssetManager;
    .end local v25    # "in":Ljava/io/InputStream;
    .end local v27    # "res":Landroid/content/res/Resources;
    :goto_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 1122
    .end local v22    # "err_filecopy":Z
    :catch_1
    move-exception v23

    .line 1124
    .local v23, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Lcom/samsung/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/FontPreviewTablet;->copyFileWithCR(Lcom/samsung/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .restart local v22    # "err_filecopy":Z
    goto :goto_5

    .line 1129
    .end local v22    # "err_filecopy":Z
    .end local v23    # "ex":Ljava/lang/Exception;
    .end local v24    # "i":I
    .end local v33    # "tpf":Lcom/samsung/android/settings/flipfont/TypefaceFile;
    :cond_9
    if-eqz v22, :cond_c

    .line 1130
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    .line 1131
    new-instance v2, Landroid/app/DialogFragment;

    invoke-direct {v2}, Landroid/app/DialogFragment;-><init>()V

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v16

    .line 1132
    .local v16, "d":Landroid/app/Dialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ListView;

    .line 1133
    .local v34, "v":Landroid/widget/ListView;
    if-eqz v34, :cond_a

    .line 1134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1135
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    .line 1137
    sget-boolean v2, Lcom/samsung/android/settings/display/FontPreviewTablet;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1138
    const-string/jumbo v2, "FlipFont"

    const-string/jumbo v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b14c3

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/FontPreviewTablet;->errorDialog(Ljava/lang/String;)V

    .line 1144
    const/4 v2, 0x0

    return v2

    .line 1147
    .end local v16    # "d":Landroid/app/Dialog;
    .end local v34    # "v":Landroid/widget/ListView;
    :cond_c
    sput-object v31, Lcom/samsung/android/settings/display/FontPreviewTablet;->persistString:Ljava/lang/String;

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 1150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    .line 1151
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->savePreferences()V

    .line 1153
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mPreviousFont:I

    .line 1157
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v35, "#"

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mFontListAdapter:Lcom/samsung/android/settings/flipfont/FontListAdapter;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/samsung/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/samsung/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1158
    :catch_2
    move-exception v20

    .line 1159
    .local v20, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "FontPreviewTablet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fontWriter.writeLoc() : RuntimeException occured. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1171
    .end local v3    # "fontWriter":Lcom/samsung/android/settings/flipfont/FontWriter;
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v20    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "index":I
    .end local v29    # "sFontDir":Ljava/lang/String;
    .end local v30    # "sansTypeface":Lcom/samsung/android/settings/flipfont/Typeface;
    .restart local v12    # "am":Landroid/app/IActivityManager;
    :catch_3
    move-exception v19

    .line 1173
    .local v19, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 1191
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 1192
    .local v10, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v10, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 1193
    .local v11, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x1

    .line 1195
    .restart local v24    # "i":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "aTask$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1196
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v28

    .line 1199
    .local v28, "s":Ljava/lang/String;
    const-string/jumbo v2, "com.android.settings"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1200
    const-string/jumbo v2, "com.samsung.music"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1201
    const-string/jumbo v2, "com.sec.android.app.music"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1202
    const-string/jumbo v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1203
    const-string/jumbo v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    .line 1214
    :cond_f
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_6

    .line 1204
    :cond_10
    const-string/jumbo v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1205
    const-string/jumbo v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1206
    const-string/jumbo v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1207
    const-string/jumbo v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1208
    const-string/jumbo v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1209
    const-string/jumbo v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1210
    const-string/jumbo v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1211
    const-string/jumbo v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1212
    const-string/jumbo v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_f

    .line 1216
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1217
    const-string/jumbo v2, "com.nttdocomo.android.toruca"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_e

    .line 1218
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1221
    :cond_11
    const-string/jumbo v2, "com.sec.android.app.camera"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    .line 1222
    const-string/jumbo v2, "FontPreviewTablet"

    const-string/jumbo v6, "com.sec.android.app.camera == 0"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1224
    :cond_12
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1238
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "aTask$iterator":Ljava/util/Iterator;
    .end local v10    # "activityManager":Landroid/app/ActivityManager;
    .end local v11    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v24    # "i":I
    .end local v28    # "s":Ljava/lang/String;
    :cond_13
    const/4 v2, 0x1

    return v2

    .line 1182
    :catch_4
    move-exception v17

    .local v17, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1418
    const-string/jumbo v0, "USER_SELECTED_FONT_STYLE"

    iget v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSelectedFontStyleItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1417
    return-void
.end method

.method public readFontSizePreference()V
    .locals 3

    .prologue
    .line 1329
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FontPreviewTablet"

    const-string/jumbo v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 1009
    const/4 v1, 0x0

    .line 1010
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1013
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1015
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "SelectDialogIsActive"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1016
    const-string/jumbo v3, "SavedClickedItem"

    iget v4, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1018
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "flip_font_style"

    iget v5, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1007
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 1243
    const/4 v1, 0x0

    .line 1244
    .local v1, "mode":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1246
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1248
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1241
    return-void
.end method

.method public writeFontSizePreference(F)V
    .locals 5
    .param p1, "fontFloatSize"    # F

    .prologue
    .line 1310
    move v0, p1

    .line 1311
    .local v0, "fontScale":F
    const-string/jumbo v2, "FontPreviewTablet"

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

    .line 1313
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1314
    .local v1, "largeFontScale":F
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mIsFont11Level:Z

    if-eqz v2, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v1

    .line 1318
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1319
    move v0, v1

    .line 1323
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/display/FontPreviewTablet;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->writeFontScaleDBAllUser(Landroid/content/Context;F)V

    .line 1308
    return-void
.end method
