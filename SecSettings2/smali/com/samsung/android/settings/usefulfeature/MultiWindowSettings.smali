.class public Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "MultiWindowSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;,
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;,
        Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mPopupGesture:Landroid/preference/SwitchPreference;

.field private mSplitScreen:Landroid/preference/SwitchPreference;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 376
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 418
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 71
    return-void
.end method


# virtual methods
.method public changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ce

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    .line 94
    sget v0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->SETTINGS_ADVANCEDFEATURE_MULTIWINDOW:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 191
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 194
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04011b

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 196
    .local v1, "guideView":Landroid/view/View;
    const v6, 0x7f110155

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    .line 197
    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    .line 198
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 199
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v7}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 200
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v7, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 214
    const v6, 0x7f1103dd

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    .line 215
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v5

    .line 216
    .local v5, "pointCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 217
    move v0, v2

    .line 219
    .local v0, "current":I
    const v6, 0x7f040071

    invoke-virtual {v3, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 220
    .local v4, "point":Landroid/widget/ImageView;
    const v6, 0x7f0b0987

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v6, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;

    invoke-direct {v6, p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;I)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "current":I
    .end local v4    # "point":Landroid/widget/ImageView;
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 231
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0200cf

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ne v6, v9, :cond_2

    .line 235
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 242
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 246
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v1, v11, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 190
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    .line 163
    .local v0, "position":I
    const-string/jumbo v1, "MultiWindowSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged() : position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-ltz v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 167
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 158
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    .line 142
    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->addPreferencesFromResource(I)V

    .line 144
    const-string/jumbo v0, "pop_up_gesture"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    .line 145
    const-string/jumbo v0, "split_screen"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->setHasOptionsMenu(Z)V

    .line 154
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 137
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    const/4 v1, 0x1

    const v2, 0x7f0b043c

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 356
    .local v0, "helpitem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    .end local v0    # "helpitem":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 353
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 323
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 364
    .local v2, "itemId":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "multi_window"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 369
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MultiWindows"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 315
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0b1953

    const v5, 0x7f0b1952

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 333
    .local v2, "value":Z
    const-string/jumbo v7, "MultiWindowSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPreferenceChange :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v7, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 335
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 336
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v7, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 338
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "db_popup_view_shortcut"

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 341
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 342
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 349
    :cond_2
    :goto_1
    return v4

    :cond_3
    move v3, v6

    .line 342
    goto :goto_0

    .line 343
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "db_split_screen_view_shortcut"

    if-eqz v2, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 346
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 347
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    :goto_2
    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowViewPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 183
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 186
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v4, 0x7f0b1952

    const/4 v9, 0x0

    const v5, 0x7f0b1953

    const/4 v8, 0x0

    .line 258
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 259
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v6, "android.software.freeform_window_management"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 259
    if-eqz v3, :cond_1

    .line 261
    :cond_0
    const-string/jumbo v3, "pop_up_gesture"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->removePreference(Ljava/lang/String;)V

    .line 263
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 265
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 266
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 267
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 268
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 277
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 279
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 280
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 282
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 291
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0, v9, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 295
    invoke-static {}, Landroid/app/ActivityManager;->supportsMultiWindow()Z

    move-result v3

    if-nez v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_4

    .line 297
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 298
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 299
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 300
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 302
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_5

    .line 303
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 304
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 305
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v8}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 306
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 311
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "MultiWindows"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 257
    return-void

    .line 270
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 271
    const-string/jumbo v6, "db_popup_view_shortcut"

    const/4 v7, 0x1

    .line 270
    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v1, 0x1

    .line 272
    .local v1, "popupGestureCheck":Z
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 273
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 274
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mPopupGesture:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_8

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 270
    .end local v1    # "popupGestureCheck":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "popupGestureCheck":Z
    goto :goto_2

    :cond_8
    move v3, v5

    .line 274
    goto :goto_3

    .line 284
    .end local v1    # "popupGestureCheck":Z
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 285
    const-string/jumbo v6, "db_split_screen_view_shortcut"

    .line 284
    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    .line 286
    .local v2, "splitScreenCheck":Z
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 287
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 288
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->mSplitScreen:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_b

    :goto_5
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    .line 284
    .end local v2    # "splitScreenCheck":Z
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "splitScreenCheck":Z
    goto :goto_4

    :cond_b
    move v4, v5

    .line 288
    goto :goto_5
.end method
