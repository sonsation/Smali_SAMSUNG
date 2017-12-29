.class public Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "RecentsKeySettings.java"

# interfaces
.implements Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;,
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;,
        Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mPointArea:Landroid/widget/LinearLayout;

.field private mRecentsKeyObserver:Landroid/database/ContentObserver;

.field private mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

.field private mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/SecRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Lcom/samsung/android/settings/WrapContentHeightViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->changeColor(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 0
    .param p1, "activated"    # Lcom/samsung/android/settings/SecRadioButtonPreference;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    .line 314
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$3;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 54
    return-void
.end method

.method private changeColor(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ed

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ee

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    return-void
.end method

.method private updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 4
    .param p1, "activated"    # Lcom/samsung/android/settings/SecRadioButtonPreference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_snap_window_shortcut"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setChecked(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_snap_window_shortcut"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SettingsActivity;

    .line 136
    .local v9, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 140
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04012d

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 142
    .local v12, "guideView":Landroid/view/View;
    const v2, 0x7f11015a

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/WrapContentHeightViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    .line 143
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 160
    const v2, 0x7f110427

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v17

    .line 162
    .local v17, "pointCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 163
    move v10, v13

    .line 165
    .local v10, "current":I
    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 166
    .local v16, "point":Landroid/widget/ImageView;
    const v2, 0x7f0b0b53

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v13, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    new-instance v2, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 176
    .end local v10    # "current":I
    .end local v16    # "point":Landroid/widget/ImageView;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mPointArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 183
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    const v2, 0x7f110149

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 185
    .local v11, "divider":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .end local v11    # "divider":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 192
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getListView()Landroid/widget/ListView;

    move-result-object v15

    .line 196
    .local v15, "mListView":Landroid/widget/ListView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 198
    .local v18, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0a0562

    .line 197
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 200
    const v3, 0x7f0a01c3

    .line 199
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 197
    add-int v5, v2, v3

    .line 201
    .local v5, "divider_inset_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 202
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v15}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 203
    const/4 v6, 0x0

    .line 202
    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 204
    .local v1, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v15, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_1
    return-void

    .line 206
    .end local v1    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_5
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v15}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 207
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    .line 206
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 208
    .restart local v1    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v15, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->getCurrentItem()I

    move-result v0

    .line 109
    .local v0, "position":I
    const-string/jumbo v1, "RecentsKeySettings"

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

    .line 111
    if-ltz v0, :cond_0

    .line 112
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setOffscreenPageLimit(I)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 104
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->addPreferencesFromResource(I)V

    .line 94
    const-string/jumbo v0, "snap_window"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    .line 95
    const-string/jumbo v0, "split_screen_view"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/SecRadioButtonPreference$OnClickListener;)V

    .line 100
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 89
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 271
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 270
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 260
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "UseRecentsButton"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPagerAdapter:Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v1

    .line 125
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/SecRadioButtonPreference;)V
    .locals 3
    .param p1, "emiter"    # Lcom/samsung/android/settings/SecRadioButtonPreference;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f01db

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/SecRadioButtonPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 280
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 235
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_split_screen_view_shortcut"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mRecentsKeyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_split_screen_view_shortcut"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 243
    .local v0, "recentsKeyCheck":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/SecRadioButtonPreference;->setEnabled(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "db_snap_window_shortcut"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSplitScreenview:Lcom/samsung/android/settings/SecRadioButtonPreference;

    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->updateRadioButtons(Lcom/samsung/android/settings/SecRadioButtonPreference;)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mViewPager:Lcom/samsung/android/settings/WrapContentHeightViewPager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_snap_window_shortcut"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/WrapContentHeightViewPager;->setCurrentItem(I)V

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "UseRecentsButton"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 232
    return-void

    .end local v0    # "recentsKeyCheck":Ljava/lang/Boolean;
    :cond_3
    move v1, v2

    .line 242
    goto :goto_0

    .line 251
    .restart local v0    # "recentsKeyCheck":Ljava/lang/Boolean;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->mSnapWindow:Lcom/samsung/android/settings/SecRadioButtonPreference;

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "db_split_screen_view_shortcut"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f01da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 286
    return-void

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0
.end method
