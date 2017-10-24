.class public abstract Landroid/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceActivity$1;,
        Landroid/preference/PreferenceActivity$Header;,
        Landroid/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final CUR_HEADER_TAG:Ljava/lang/String; = ":android:cur_header"

.field public static final EXTRA_NO_HEADERS:Ljava/lang/String; = ":android:no_headers"

.field private static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field private static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field private static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":android:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":android:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_SHORT_TITLE:Ljava/lang/String; = ":android:show_fragment_short_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":android:show_fragment_title"

.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final HEADERS_TAG:Ljava/lang/String; = ":android:headers"

.field public static final HEADER_ID_UNDEFINED:J = -0x1L

.field private static final HUGE_FONT_FIRST:I = 0x7

.field private static final HUGE_FONT_FOURTH:I = 0xa

.field private static final HUGE_FONT_SECOND:I = 0x8

.field private static final HUGE_FONT_THIRD:I = 0x9

.field private static final INTENT_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final MSG_BUILD_HEADERS:I = 0x2

.field private static final PREFERENCES_TAG:Ljava/lang/String; = ":android:preferences"

.field private static final SPLIT_BAR_MOVEABLE_AREA_MAX:F = 0.66f

.field private static final SPLIT_BAR_MOVEABLE_AREA_MIN:F = 0.2f

.field private static final SPLIT_BAR_SPLIT_X_IN_FULLVIEW:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "PreferenceActivity"

.field private static mLargerFontLevel:I

.field private static mSplitBarMovedLeftWeight:F

.field private static mTitleLargerTextSize:I

.field private static mUserUpdateSplit:Z


# instance fields
.field private mCurHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableSplitBar:Z

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

.field private mHeaderLayout:Landroid/widget/LinearLayout;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInsideOnCreate:Z

.field private mIsDeviceDefault:Z

.field private mIsMultiPane:Z

.field private mIsRTL:Z

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroid/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z

.field private mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

.field private mSplitBarView:Landroid/view/View;

.field private mUpdateLayoutBySplitChange:Z


# direct methods
.method static synthetic -get0(Landroid/preference/PreferenceActivity;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/preference/PreferenceActivity;)Landroid/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic -get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11()I
    .locals 1

    sget v0, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    return v0
.end method

.method static synthetic -get12(Landroid/preference/PreferenceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return v0
.end method

.method static synthetic -get2(Landroid/preference/PreferenceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    return v0
.end method

.method static synthetic -get3(Landroid/preference/PreferenceActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Landroid/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Landroid/preference/PreferenceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic -get6(Landroid/preference/PreferenceActivity;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Landroid/preference/PreferenceActivity;->mLargerFontLevel:I

    return v0
.end method

.method static synthetic -get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get9()F
    .locals 1

    sget v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return v0
.end method

.method static synthetic -set0(F)F
    .locals 0

    sput p0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    return p0
.end method

.method static synthetic -set1(Landroid/preference/PreferenceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    .line 259
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z

    .line 142
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    .line 236
    iput v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 237
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 247
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

    .line 249
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 251
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 254
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 258
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z

    .line 261
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 280
    new-instance v0, Landroid/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceActivity$1;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    .line 1097
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1098
    iput-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    .line 142
    return-void
.end method

.method private bindPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1824
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1825
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 1826
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 1827
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 1828
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1829
    iput-object v2, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1823
    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1819
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1820
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1818
    return-void
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1848
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 1849
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1852
    const-string/jumbo v1, "Modern two-pane PreferenceActivity requires use of a PreferenceFragment"

    .line 1851
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1846
    :cond_1
    return-void
.end method

.method private setTitleFontSize()V
    .locals 4

    .prologue
    .line 1967
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1968
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "font_size"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mLargerFontLevel:I

    .line 1969
    sget v1, Landroid/preference/PreferenceActivity;->mLargerFontLevel:I

    packed-switch v1, :pswitch_data_0

    .line 1987
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    .line 1966
    :goto_0
    return-void

    .line 1971
    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105028e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    goto :goto_0

    .line 1975
    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    goto :goto_0

    .line 1979
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050290

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    goto :goto_0

    .line 1983
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050291

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    goto :goto_0

    .line 1969
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1620
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ":android:prefs"

    .line 1621
    const/4 v4, 0x1

    .line 1620
    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1622
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1623
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1626
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1627
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1628
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-boolean v2, p0, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    if-nez v2, :cond_1

    .line 1629
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1631
    :cond_1
    const v2, 0x1020463

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1632
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1619
    return-void
.end method


# virtual methods
.method public addPreferencesFromIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1905
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1907
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromIntent(Landroid/content/Intent;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1904
    return-void
.end method

.method public addPreferencesFromResource(I)V
    .locals 2
    .param p1, "preferencesResId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1921
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1923
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 1924
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1923
    invoke-virtual {v0, p0, p1, v1}, Landroid/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1920
    return-void
.end method

.method findBestMatchingHeader(Landroid/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Landroid/preference/PreferenceActivity$Header;
    .locals 10
    .param p1, "cur"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)",
            "Landroid/preference/PreferenceActivity$Header;"
        }
    .end annotation

    .prologue
    .local p2, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1677
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1678
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1679
    .local v3, "oh":Landroid/preference/PreferenceActivity$Header;
    if-eq p1, v3, :cond_0

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1681
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1682
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1700
    .local v0, "NM":I
    if-ne v0, v9, :cond_6

    .line 1701
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity$Header;

    return-object v4

    .line 1685
    .end local v0    # "NM":I
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1686
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1687
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1689
    :cond_4
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 1690
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1691
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1693
    :cond_5
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1694
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1695
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1702
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    .restart local v0    # "NM":I
    :cond_6
    if-le v0, v9, :cond_a

    .line 1703
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_a

    .line 1704
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1705
    .restart local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 1706
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1705
    if-eqz v4, :cond_7

    .line 1707
    return-object v3

    .line 1709
    :cond_7
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1710
    return-object v3

    .line 1712
    :cond_8
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1713
    return-object v3

    .line 1703
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1717
    .end local v3    # "oh":Landroid/preference/PreferenceActivity$Header;
    :cond_a
    return-object v8
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1951
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1952
    return-object v1

    .line 1955
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 2
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1790
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    .line 1791
    invoke-virtual {p0, p2, p3}, Landroid/preference/PreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 1792
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1796
    if-eqz p1, :cond_0

    .line 1797
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1843
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1889
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    .line 1892
    :cond_0
    return-object v1
.end method

.method public hasHeaders()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1066
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1067
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1066
    :cond_0
    return v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 1995
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateHeaders()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1181
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1180
    :cond_0
    return-void
.end method

.method public isMultiPane()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->hasHeaders()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 1325
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1328
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1329
    const-string/jumbo v2, " has not checked if fragment "

    .line 1327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1329
    const-string/jumbo v2, " is valid."

    .line 1327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1331
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v11, 0x0

    .line 1196
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 1197
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1200
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    .line 1201
    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 1205
    :cond_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1206
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "preference-headers"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1207
    new-instance v15, Ljava/lang/RuntimeException;

    .line 1208
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "XML document must start with <preference-headers> tag; found"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1209
    const-string/jumbo v17, " at "

    .line 1208
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1209
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    .line 1208
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1207
    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v14    # "type":I
    :catch_0
    move-exception v5

    .line 1308
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1311
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    .line 1312
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1311
    :cond_2
    throw v15

    .line 1212
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14    # "type":I
    :cond_3
    const/4 v3, 0x0

    .line 1214
    .local v3, "curBundle":Landroid/os/Bundle;
    :try_start_2
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 1215
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .local v10, "outerDepth":I
    :cond_4
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_16

    .line 1216
    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v10, :cond_16

    .line 1217
    :cond_5
    const/4 v15, 0x3

    if-eq v14, v15, :cond_4

    const/4 v15, 0x4

    if-eq v14, v15, :cond_4

    .line 1221
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1222
    const-string/jumbo v15, "header"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1223
    new-instance v6, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v6}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1226
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v15, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    .line 1225
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1228
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    .line 1229
    const/16 v16, -0x1

    .line 1227
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1231
    const/4 v15, 0x2

    .line 1230
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1232
    .local v13, "tv":Landroid/util/TypedValue;
    if-eqz v13, :cond_6

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 1233
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_d

    .line 1234
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1240
    :cond_6
    :goto_1
    const/4 v15, 0x3

    .line 1239
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1241
    if-eqz v13, :cond_7

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1242
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_e

    .line 1243
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1249
    :cond_7
    :goto_2
    const/4 v15, 0x5

    .line 1248
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1250
    if-eqz v13, :cond_8

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_8

    .line 1251
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_f

    .line 1252
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1258
    :cond_8
    :goto_3
    const/4 v15, 0x6

    .line 1257
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1259
    if-eqz v13, :cond_9

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 1260
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_10

    .line 1261
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1267
    :cond_9
    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1266
    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v6, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1269
    const/4 v15, 0x4

    .line 1268
    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1270
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 1272
    if-nez v3, :cond_a

    .line 1273
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1276
    :cond_a
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 1277
    .local v7, "innerDepth":I
    :cond_b
    :goto_5
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    .line 1278
    const/4 v15, 0x3

    if-ne v14, v15, :cond_c

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v7, :cond_13

    .line 1279
    :cond_c
    const/4 v15, 0x3

    if-eq v14, v15, :cond_b

    const/4 v15, 0x4

    if-eq v14, v15, :cond_b

    .line 1283
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1284
    .local v8, "innerNodeName":Ljava/lang/String;
    const-string/jumbo v15, "extra"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 1285
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v16, "extra"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1286
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 1309
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v8    # "innerNodeName":Ljava/lang/String;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catch_1
    move-exception v4

    .line 1310
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/lang/RuntimeException;

    const-string/jumbo v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1236
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "outerDepth":I
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_d
    :try_start_4
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1245
    :cond_e
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1254
    :cond_f
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1263
    :cond_10
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1288
    .restart local v7    # "innerDepth":I
    .restart local v8    # "innerNodeName":Ljava/lang/String;
    :cond_11
    const-string/jumbo v15, "intent"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1289
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v11, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v6, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 1292
    :cond_12
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1296
    .end local v8    # "innerNodeName":Ljava/lang/String;
    :cond_13
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v15

    if-lez v15, :cond_14

    .line 1297
    iput-object v3, v6, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1298
    const/4 v3, 0x0

    .line 1301
    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1303
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v7    # "innerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_15
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1312
    :cond_16
    if-eqz v11, :cond_17

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1193
    :cond_17
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1424
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1426
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1427
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    .line 1423
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1172
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "shortTitleRes"    # I

    .prologue
    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1499
    const-string/jumbo v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    const-string/jumbo v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1501
    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1502
    const-string/jumbo v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1503
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1504
    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 1433
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1435
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1436
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1432
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 598
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 599
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 603
    sget-object v30, Lcom/android/internal/R$styleable;->PreferenceActivity:[I

    .line 602
    const/16 v31, 0x0

    .line 604
    const v32, 0x1160020

    .line 605
    const/16 v33, 0x0

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 608
    .local v27, "sa":Landroid/content/res/TypedArray;
    const/16 v30, 0x0

    .line 609
    const v31, 0x10900c6

    .line 607
    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v20

    .line 612
    .local v20, "layoutResId":I
    const/16 v30, 0x1

    .line 613
    const v31, 0x10900c0

    .line 611
    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 615
    const/16 v30, 0x2

    .line 616
    const/16 v31, 0x0

    .line 614
    move-object/from16 v0, v27

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 618
    new-instance v23, Landroid/util/TypedValue;

    invoke-direct/range {v23 .. v23}, Landroid/util/TypedValue;-><init>()V

    .line 619
    .local v23, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x11600cb

    const/16 v32, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v23

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 620
    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v30, v0

    if-eqz v30, :cond_9

    const/16 v30, 0x1

    :goto_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    .line 622
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 624
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 626
    const v30, 0x1020460

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 627
    const v30, 0x1020461

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 628
    const v30, 0x1020462

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 629
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v12

    .line 630
    .local v12, "hidingHeaders":Z
    if-nez v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v30

    if-eqz v30, :cond_a

    const/16 v30, 0x0

    :goto_1
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string/jumbo v31, ":android:show_fragment"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 632
    .local v14, "initialFragment":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string/jumbo v31, ":android:show_fragment_args"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 633
    .local v13, "initialArguments":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string/jumbo v31, ":android:show_fragment_title"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 634
    .local v17, "initialTitle":I
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v30

    const-string/jumbo v31, ":android:show_fragment_short_title"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 637
    .local v15, "initialShortTitle":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    .line 659
    :cond_0
    const v30, 0x1020511

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 662
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 666
    :cond_1
    :goto_2
    if-eqz p1, :cond_c

    .line 669
    const-string/jumbo v30, ":android:headers"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 670
    .local v11, "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v11, :cond_2

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    const-string/jumbo v30, ":android:cur_header"

    .line 673
    const/16 v31, -0x1

    .line 672
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 674
    .local v8, "curHeader":I
    if-ltz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v8, v0, :cond_2

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 718
    .end local v8    # "curHeader":I
    .end local v11    # "headers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_2
    :goto_3
    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_11

    .line 720
    const v30, 0x1020460

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 724
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 726
    .local v7, "crumbsLayout":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 727
    const/16 v30, 0x8

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 728
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    .line 732
    .end local v7    # "crumbsLayout":Landroid/view/ViewGroup;
    :cond_3
    if-eqz v17, :cond_4

    .line 733
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 734
    .local v18, "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v15, :cond_10

    .line 735
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 736
    .local v16, "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 761
    .end local v16    # "initialShortTitleStr":Ljava/lang/CharSequence;
    .end local v18    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_4
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 762
    .local v19, "intent":Landroid/content/Intent;
    const-string/jumbo v30, "extra_prefs_show_button_bar"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 764
    const v30, 0x1020464

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 766
    const v30, 0x1020465

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 767
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v30, Landroid/preference/PreferenceActivity$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$2;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    const v30, 0x1020466

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    .line 774
    .local v28, "skipButton":Landroid/widget/Button;
    new-instance v30, Landroid/preference/PreferenceActivity$3;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$3;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    const v30, 0x1020467

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Button;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    new-instance v31, Landroid/preference/PreferenceActivity$4;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$4;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    const-string/jumbo v30, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 790
    const-string/jumbo v30, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 791
    .local v6, "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_15

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Button;->setVisibility(I)V

    .line 798
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_5
    :goto_6
    const-string/jumbo v30, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 799
    const-string/jumbo v30, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 800
    .restart local v6    # "buttonText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 801
    const/16 v30, 0x8

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 807
    .end local v6    # "buttonText":Ljava/lang/String;
    :cond_6
    :goto_7
    const-string/jumbo v30, "extra_prefs_show_skip"

    const/16 v31, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 808
    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 813
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v28    # "skipButton":Landroid/widget/Button;
    :cond_7
    new-instance v24, Landroid/preference/Preference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 814
    .local v24, "preference":Landroid/preference/Preference;
    invoke-virtual/range {v24 .. v24}, Landroid/preference/Preference;->isRTL()Z

    move-result v30

    if-eqz v30, :cond_17

    invoke-virtual/range {v24 .. v24}, Landroid/preference/Preference;->hasRTL()Z

    move-result v30

    :goto_8
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mIsRTL:Z

    .line 817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    .line 1058
    :cond_8
    :goto_9
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/preference/PreferenceActivity;->mInsideOnCreate:Z

    .line 597
    return-void

    .line 620
    .end local v12    # "hidingHeaders":Z
    .end local v13    # "initialArguments":Landroid/os/Bundle;
    .end local v14    # "initialFragment":Ljava/lang/String;
    .end local v15    # "initialShortTitle":I
    .end local v17    # "initialTitle":I
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v24    # "preference":Landroid/preference/Preference;
    :cond_9
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 630
    .restart local v12    # "hidingHeaders":Z
    :cond_a
    const/16 v30, 0x1

    goto/16 :goto_1

    .line 638
    .restart local v13    # "initialArguments":Landroid/os/Bundle;
    .restart local v14    # "initialFragment":Ljava/lang/String;
    .restart local v15    # "initialShortTitle":I
    .restart local v17    # "initialTitle":I
    :cond_b
    const v30, 0x1020511

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    .line 640
    const v30, 0x1020460

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 641
    .local v10, "headerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 643
    .local v22, "llp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 645
    .local v26, "rlp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v21, v0

    .line 646
    .local v21, "leftPanelWeight":F
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    .line 647
    .local v25, "rightPanelWeight":F
    add-float v29, v21, v25

    .line 650
    .local v29, "weightSum":F
    sget v30, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-lez v30, :cond_1

    .line 651
    sget v30, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    move/from16 v0, v30

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 652
    sget v30, Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F

    sub-float v30, v29, v30

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 653
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 680
    .end local v10    # "headerLayout":Landroid/widget/LinearLayout;
    .end local v21    # "leftPanelWeight":F
    .end local v22    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "rightPanelWeight":F
    .end local v26    # "rlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v29    # "weightSum":F
    :cond_c
    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 685
    if-eqz v17, :cond_2

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 687
    .restart local v18    # "initialTitleStr":Ljava/lang/CharSequence;
    if-eqz v15, :cond_d

    .line 688
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 689
    .restart local v16    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 688
    .end local v16    # "initialShortTitleStr":Ljava/lang/CharSequence;
    :cond_d
    const/16 v16, 0x0

    goto :goto_a

    .line 694
    .end local v18    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_2

    .line 704
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    .line 705
    if-nez v14, :cond_f

    .line 706
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v9

    .line 707
    .local v9, "h":Landroid/preference/PreferenceActivity$Header;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto/16 :goto_3

    .line 709
    .end local v9    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 735
    .restart local v18    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 738
    .end local v18    # "initialTitleStr":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_13

    .line 739
    new-instance v30, Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    move/from16 v32, v0

    .line 740
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    move/from16 v33, v0

    .line 739
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 742
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    move/from16 v30, v0

    if-nez v30, :cond_4

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v30

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 748
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    .line 753
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z

    move/from16 v30, v0

    if-eqz v30, :cond_14

    const v30, 0x109015f

    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->setContentView(I)V

    .line 754
    const v30, 0x1020461

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/FrameLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    .line 755
    const v30, 0x1020463

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    .line 756
    new-instance v30, Landroid/preference/PreferenceManager;

    const/16 v31, 0x64

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    goto/16 :goto_5

    .line 753
    :cond_14
    const v30, 0x10900c8

    goto :goto_b

    .line 795
    .restart local v5    # "backButton":Landroid/widget/Button;
    .restart local v6    # "buttonText":Ljava/lang/String;
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v28    # "skipButton":Landroid/widget/Button;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 804
    :cond_16
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 814
    .end local v5    # "backButton":Landroid/widget/Button;
    .end local v6    # "buttonText":Ljava/lang/String;
    .end local v28    # "skipButton":Landroid/widget/Button;
    .restart local v24    # "preference":Landroid/preference/Preference;
    :cond_17
    const/16 v30, 0x0

    goto/16 :goto_8

    .line 817
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    if-eqz v30, :cond_8

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v30, v0

    if-nez v30, :cond_19

    .line 820
    new-instance v30, Landroid/preference/PreferenceActivity$5;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$5;-><init>(Landroid/preference/PreferenceActivity;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    .line 850
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarLayoutChangeListner:Landroid/view/View$OnLayoutChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;

    move-object/from16 v30, v0

    new-instance v31, Landroid/preference/PreferenceActivity$6;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceActivity$6;-><init>(Landroid/preference/PreferenceActivity;)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_9
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1371
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1372
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1374
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityDestroy()V

    .line 1369
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 4

    .prologue
    .line 1140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1141
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1142
    .local v0, "h":Landroid/preference/PreferenceActivity$Header;
    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1143
    return-object v0

    .line 1140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1146
    .end local v0    # "h":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Must have at least one header with a fragment"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onGetNewHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 1

    .prologue
    .line 1156
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 7
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1463
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1464
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_2

    .line 1465
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1466
    .local v5, "titleRes":I
    iget v6, p1, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1467
    .local v6, "shortTitleRes":I
    if-nez v5, :cond_0

    .line 1468
    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1469
    const/4 v6, 0x0

    .line 1471
    :cond_0
    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1462
    .end local v5    # "titleRes":I
    .end local v6    # "shortTitleRes":I
    :cond_1
    :goto_0
    return-void

    .line 1474
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1476
    :cond_3
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1477
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    .prologue
    .line 1129
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 3

    .prologue
    .line 1092
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1093
    const v2, 0x1120005

    .line 1092
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1094
    .local v0, "preferMultiPane":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 1442
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1443
    return-void

    .line 1445
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1447
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 1448
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1449
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {p0, v0, p3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1441
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1960
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    .line 1959
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 1807
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1808
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1807
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1809
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1935
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 1405
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v2, :cond_0

    .line 1406
    const-string/jumbo v2, ":android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1407
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 1409
    .local v1, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 1410
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1411
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1412
    return-void

    .line 1419
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1404
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1347
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1349
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1350
    sget v0, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    .line 1351
    .local v0, "textSize":I
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->setTitleFontSize()V

    .line 1352
    sget v1, Landroid/preference/PreferenceActivity;->mTitleLargerTextSize:I

    if-eq v0, v1, :cond_0

    .line 1353
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaderAdapter:Landroid/preference/PreferenceActivity$HeaderAdapter;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity$HeaderAdapter;->notifyDataSetChanged()V

    .line 1346
    .end local v0    # "textSize":I
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1381
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1383
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1384
    const-string/jumbo v3, ":android:headers"

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1385
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_0

    .line 1386
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1387
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1388
    const-string/jumbo v3, ":android:cur_header"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    .end local v1    # "index":I
    :cond_0
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v3, :cond_1

    .line 1394
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 1395
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 1396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 1398
    const-string/jumbo v3, ":android:preferences"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1380
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v2    # "preferenceScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1361
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1363
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->dispatchActivityStop()V

    .line 1360
    :cond_0
    return-void
.end method

.method protected semSetMultiPane(Z)V
    .locals 0
    .param p1, "isMultiPane"    # Z

    .prologue
    .line 1108
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mIsMultiPane:Z

    .line 1107
    return-void
.end method

.method public setEnableSplitBar(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1118
    iput-boolean p1, p0, Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z

    .line 1117
    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1339
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1340
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1341
    const/4 v2, -0x1

    .line 1342
    const/4 v3, -0x2

    .line 1340
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1338
    return-void
.end method

.method public setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1592
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-eqz v0, :cond_0

    .line 1593
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1591
    :cond_0
    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1866
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->requirePreferenceManager()V

    .line 1868
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mPreferenceManager:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceManager;->setPreferences(Landroid/preference/PreferenceScreen;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1869
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;->postBindPreferences()V

    .line 1870
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1872
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1873
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1865
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1598
    iput-object p1, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1599
    iget-object v1, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1600
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1601
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1605
    :goto_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V

    .line 1597
    return-void

    .line 1603
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0
.end method

.method showBreadCrumbs(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v2, 0x0

    .line 1609
    if-eqz p1, :cond_2

    .line 1610
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1611
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1612
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1613
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1608
    .end local v0    # "title":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1615
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "shortTitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1550
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_4

    .line 1551
    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1554
    .local v1, "crumbs":Landroid/view/View;
    :try_start_0
    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    .end local v1    # "crumbs":Landroid/view/View;
    iput-object v1, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1559
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v3, :cond_1

    .line 1560
    if-eqz p1, :cond_0

    .line 1561
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1563
    :cond_0
    return-void

    .line 1555
    :catch_0
    move-exception v2

    .line 1556
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1557
    return-void

    .line 1565
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v3, :cond_3

    .line 1566
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    .line 1568
    const v3, 0x10203a4

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1569
    .local v0, "bcSection":Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1572
    .end local v0    # "bcSection":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1573
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    .line 1575
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 1576
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1549
    :goto_0
    return-void

    .line 1578
    :cond_5
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1579
    iget-object v3, p0, Landroid/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v3, v5, v5, v5}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1728
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1729
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x1020463

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1730
    if-eqz p2, :cond_0

    .line 1731
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1732
    const-string/jumbo v1, ":android:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1736
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1727
    return-void

    .line 1734
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 1760
    iget-boolean v0, p0, Landroid/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    .line 1761
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1759
    :goto_0
    return-void

    .line 1763
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v7

    .line 1764
    .local v7, "f":Landroid/app/Fragment;
    if-eqz p5, :cond_1

    .line 1765
    invoke-virtual {v7, p5, p6}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1767
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 1768
    .local v8, "transaction":Landroid/app/FragmentTransaction;
    const v0, 0x1020463

    invoke-virtual {v8, v0, v7}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1769
    if-eqz p3, :cond_3

    .line 1770
    invoke-virtual {v8, p3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1774
    :cond_2
    :goto_1
    const/16 v0, 0x1001

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1775
    const-string/jumbo v0, ":android:prefs"

    invoke-virtual {v8, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1776
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 1771
    :cond_3
    if-eqz p4, :cond_2

    .line 1772
    invoke-virtual {v8, p4}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_1
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V
    .locals 7
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    .line 1513
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    .line 1512
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "resultTo"    # Landroid/app/Fragment;
    .param p4, "resultRequestCode"    # I
    .param p5, "titleRes"    # I
    .param p6, "shortTitleRes"    # I

    .prologue
    .line 1536
    invoke-virtual {p0, p1, p2, p5, p6}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 1537
    .local v0, "intent":Landroid/content/Intent;
    if-nez p3, :cond_0

    .line 1538
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 1535
    :goto_0
    return-void

    .line 1540
    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 3
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 1661
    iget-object v0, p0, Landroid/preference/PreferenceActivity;->mCurHeader:Landroid/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    .line 1664
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, ":android:prefs"

    .line 1665
    const/4 v2, 0x1

    .line 1664
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 1660
    :goto_0
    return-void

    .line 1667
    :cond_0
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1668
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1670
    :cond_1
    iget-object v0, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1671
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1643
    const/4 v1, 0x0

    .line 1644
    .local v1, "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1645
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    iget-object v2, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    iget-object v2, p0, Landroid/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1650
    :cond_0
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->setSelectedHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 1651
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1642
    return-void

    .line 1644
    .restart local v1    # "selectedHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
