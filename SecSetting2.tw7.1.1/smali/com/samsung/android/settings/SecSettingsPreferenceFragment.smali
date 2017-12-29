.class public abstract Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.super Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;
.source "SecSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;,
        Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field private mButtonBar:Landroid/view/ViewGroup;

.field private mClickPreferenceKey:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentRootAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

.field protected mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mEmptyView:Landroid/view/View;

.field private mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

.field private mFooter:Lcom/android/settings/applications/SecLayoutPreference;

.field private mHeader:Lcom/android/settings/applications/SecLayoutPreference;

.field private mHelpUri:Ljava/lang/String;

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 108
    new-instance v0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 121
    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 985
    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->hasListView()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    return v4

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 437
    .local v2, "listView":Landroid/widget/ListView;
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 439
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    instance-of v3, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_1

    .line 440
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 441
    :cond_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v3, :cond_2

    .line 442
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 443
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 446
    .end local v1    # "listAdapter":Landroid/widget/ListAdapter;
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    return v4
.end method

.method private checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 217
    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 220
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 221
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 222
    .local v2, "pref":Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings/SelfAvailablePreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 223
    check-cast v3, Lcom/android/settings/SelfAvailablePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/SelfAvailablePreference;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    :cond_1
    instance-of v3, v2, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 226
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V

    .line 220
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 224
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 216
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_4
    return-void
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 562
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 563
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 564
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 565
    .local v1, "item":Ljava/lang/Object;
    instance-of v5, v1, Landroid/preference/Preference;

    if-eqz v5, :cond_0

    move-object v3, v1

    .line 566
    check-cast v3, Landroid/preference/Preference;

    .line 567
    .local v3, "preference":Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, "preferenceKey":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 569
    return v2

    .line 563
    .end local v3    # "preference":Landroid/preference/Preference;
    .end local v4    # "preferenceKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    const/4 v5, -0x1

    return v5
.end method

.method private getCurrentKeyList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 948
    .local v6, "ps":Landroid/preference/PreferenceScreen;
    if-nez v6, :cond_0

    return-object v7

    .line 949
    :cond_0
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 950
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 951
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 952
    .local v5, "pref":Landroid/preference/Preference;
    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, "curKey":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    instance-of v11, v5, Landroid/preference/PreferenceGroup;

    if-eqz v11, :cond_1

    move-object v4, v5

    .line 955
    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 956
    .local v4, "parentPref":Landroid/preference/PreferenceGroup;
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    .line 957
    .local v9, "subPrefCnt":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v9, :cond_1

    .line 958
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    .line 959
    .local v8, "subPref":Landroid/preference/Preference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 960
    .local v10, "subPrefKey":Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 950
    .end local v3    # "j":I
    .end local v4    # "parentPref":Landroid/preference/PreferenceGroup;
    .end local v8    # "subPref":Landroid/preference/Preference;
    .end local v9    # "subPrefCnt":I
    .end local v10    # "subPrefKey":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v1    # "curKey":Ljava/lang/String;
    .end local v5    # "pref":Landroid/preference/Preference;
    :cond_2
    return-object v7
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f020498

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getParentPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 968
    if-nez p1, :cond_0

    return-object v6

    .line 970
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 971
    .local v3, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 972
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 973
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Landroid/preference/PreferenceGroup;

    if-eqz v5, :cond_1

    .line 974
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 975
    .local v2, "pref":Landroid/preference/PreferenceGroup;
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 976
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 977
    .local v4, "target":Landroid/preference/Preference;
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 972
    .end local v2    # "pref":Landroid/preference/PreferenceGroup;
    .end local v4    # "target":Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    .restart local v2    # "pref":Landroid/preference/PreferenceGroup;
    .restart local v4    # "target":Landroid/preference/Preference;
    :cond_2
    return-object v2

    .line 983
    .end local v2    # "pref":Landroid/preference/PreferenceGroup;
    .end local v4    # "target":Landroid/preference/Preference;
    :cond_3
    return-object v6
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 452
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v4

    .line 453
    .local v4, "position":I
    if-ltz v4, :cond_1

    .line 454
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 457
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 459
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v5, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v5, :cond_2

    move-object v5, v0

    .line 460
    check-cast v5, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 468
    :cond_0
    :goto_0
    new-instance v5, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;

    invoke-direct {v5, p0, v3, v4, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 449
    .end local v3    # "listView":Landroid/widget/ListView;
    :cond_1
    return-void

    .line 462
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v3    # "listView":Landroid/widget/ListView;
    :cond_2
    instance-of v5, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_0

    .line 463
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    move-object v5, v2

    .line 464
    check-cast v5, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    .end local v2    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    goto :goto_0
.end method

.method private updateEmptyView()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 409
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 412
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    if-eqz v1, :cond_1

    move v1, v2

    .line 411
    :goto_0
    sub-int v1, v4, v1

    .line 413
    iget-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mFooter:Lcom/android/settings/applications/SecLayoutPreference;

    if-eqz v4, :cond_2

    .line 411
    :goto_1
    sub-int/2addr v1, v2

    if-gtz v1, :cond_3

    const/4 v0, 0x1

    .line 414
    .local v0, "show":Z
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .end local v0    # "show":Z
    :goto_4
    return-void

    :cond_1
    move v1, v3

    .line 412
    goto :goto_0

    :cond_2
    move v2, v3

    .line 413
    goto :goto_1

    .line 411
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "show":Z
    goto :goto_2

    .line 414
    :cond_4
    const/16 v3, 0x8

    goto :goto_3

    .line 416
    .end local v0    # "show":Z
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 1
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->checkAvailablePrefs(Landroid/preference/PreferenceGroup;)V

    .line 211
    return-void
.end method

.method public bixbyScrollPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v1

    .line 496
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 498
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 494
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method protected buildPreferenceForCOM()V
    .locals 12

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isContainerOnlyModeFromOwner(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 886
    const-class v10, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v5

    .line 890
    .local v5, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_8

    .line 891
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 892
    .local v0, "curKey":Ljava/lang/String;
    const/4 v8, 0x1

    .line 893
    .local v8, "remove":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_2

    .line 894
    if-eqz v0, :cond_1

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 895
    :cond_1
    const/4 v8, 0x0

    .line 900
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    .line 902
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 903
    .local v3, "intKey":I
    const/4 v8, 0x0

    .line 911
    .end local v3    # "intKey":I
    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    .line 912
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 913
    .local v9, "target":Landroid/preference/Preference;
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getParentPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    .line 914
    .local v7, "parent":Landroid/preference/Preference;
    instance-of v10, v9, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_6

    .line 890
    .end local v7    # "parent":Landroid/preference/Preference;
    .end local v9    # "target":Landroid/preference/Preference;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 906
    :catch_0
    move-exception v1

    .line 907
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 904
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .local v6, "ne":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 917
    .end local v6    # "ne":Ljava/lang/NumberFormatException;
    .restart local v7    # "parent":Landroid/preference/Preference;
    .restart local v9    # "target":Landroid/preference/Preference;
    :cond_6
    if-eqz v0, :cond_4

    .line 918
    if-eqz v7, :cond_7

    instance-of v10, v7, Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_7

    .line 919
    check-cast v7, Landroid/preference/PreferenceGroup;

    .end local v7    # "parent":Landroid/preference/Preference;
    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 921
    .restart local v7    # "parent":Landroid/preference/Preference;
    :cond_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_3

    .line 928
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v7    # "parent":Landroid/preference/Preference;
    .end local v8    # "remove":Z
    .end local v9    # "target":Landroid/preference/Preference;
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v5

    .line 929
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_d

    .line 930
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 931
    .restart local v9    # "target":Landroid/preference/Preference;
    if-eqz v9, :cond_c

    instance-of v10, v9, Landroid/preference/PreferenceCategory;

    if-eqz v10, :cond_c

    check-cast v9, Landroid/preference/PreferenceCategory;

    .end local v9    # "target":Landroid/preference/Preference;
    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_c

    .line 932
    const/4 v8, 0x1

    .line 933
    .restart local v8    # "remove":Z
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v10, v10

    if-ge v4, v10, :cond_b

    .line 934
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 935
    :cond_9
    const/4 v8, 0x0

    .line 933
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 938
    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 929
    .end local v4    # "j":I
    .end local v8    # "remove":Z
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 884
    .end local v2    # "i":I
    .end local v5    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    return-void
.end method

.method protected cacheRemoveAllPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 5
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1033
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 1034
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 1035
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1036
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1037
    .local v2, "p":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1032
    .end local v2    # "p":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method protected checkForKnoxCustomProKioskEnabledItems()V
    .locals 9

    .prologue
    .line 989
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object v6

    .line 990
    .local v6, "proKioskManager":Lcom/samsung/android/knox/custom/ProKioskManager;
    if-eqz v6, :cond_5

    .line 991
    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 992
    invoke-virtual {v6}, Lcom/samsung/android/knox/custom/ProKioskManager;->getSettingsEnabledItems()I

    move-result v3

    .line 993
    .local v3, "knoxCustomProKioskSettingsItems":I
    const/4 v5, 0x0

    .line 995
    .local v5, "knoxCustomSettingsState":I
    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v4

    .line 996
    .local v4, "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    if-eqz v4, :cond_0

    .line 997
    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v5

    .line 1000
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getCurrentKeyList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1002
    .local v2, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 1003
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1004
    .local v0, "curKey":Ljava/lang/String;
    const/4 v7, 0x1

    .line 1006
    .local v7, "remove":Z
    const-string/jumbo v8, "wifi_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1007
    and-int/lit8 v8, v5, 0x1

    if-nez v8, :cond_1

    .line 1008
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_1

    .line 1009
    const/4 v7, 0x0

    .line 1012
    :cond_1
    const-string/jumbo v8, "bluetooth_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1013
    and-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_2

    .line 1014
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_2

    .line 1015
    const/4 v7, 0x0

    .line 1018
    :cond_2
    const-string/jumbo v8, "location_settings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1019
    and-int/lit16 v8, v5, 0x400

    if-nez v8, :cond_3

    .line 1020
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_3

    .line 1021
    const/4 v7, 0x0

    .line 1025
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 1002
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    .end local v0    # "curKey":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "knoxCustomProKioskSettingsItems":I
    .end local v4    # "knoxCustomSettingsManager":Lcom/samsung/android/knox/custom/SettingsManager;
    .end local v5    # "knoxCustomSettingsState":I
    .end local v7    # "remove":Z
    :cond_5
    return-void
.end method

.method public customOnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1060
    const-string/jumbo v0, "SettingsPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "customOnKeyDown():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 822
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 820
    :cond_0
    return-void
.end method

.method public finishActivity()V
    .locals 2

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 829
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public final finishFragment()V
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 602
    return-void
.end method

.method public getButtonBar()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getCachedCount()I
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method protected getCachedPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    :cond_0
    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 613
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 616
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 588
    const v0, 0x7f0b1bba

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 836
    return-object v1

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method protected final getPrefContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNextButton()Z
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ButtonBarHandler;

    invoke-interface {v0}, Lcom/android/settings/ButtonBarHandler;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method protected hasNextButtonImage()Z
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;

    invoke-interface {v0}, Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;->hasNextButtonImage()Z

    move-result v0

    return v0
.end method

.method public highlightBySearch(Ljava/lang/String;)V
    .locals 12
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 505
    .local v10, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v9

    .line 506
    .local v9, "preferenceAdapter":Landroid/widget/ListAdapter;
    if-nez v9, :cond_0

    return-void

    .line 508
    :cond_0
    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 509
    .local v5, "n":I
    const/4 v6, -0x1

    .line 510
    .local v6, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 511
    invoke-interface {v9, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    .line 512
    .local v8, "pref":Landroid/preference/Preference;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 513
    move v6, v2

    .line 518
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_1
    if-gez v6, :cond_3

    return-void

    .line 510
    .restart local v8    # "pref":Landroid/preference/Preference;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v8    # "pref":Landroid/preference/Preference;
    :cond_3
    move v7, v6

    .line 520
    .local v7, "position":I
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 521
    .local v1, "highlight":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 523
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 524
    .local v4, "listView":Landroid/widget/ListView;
    move-object v0, v9

    .line 526
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v11, v9, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v11, :cond_5

    move-object v11, v9

    .line 527
    check-cast v11, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    check-cast v9, Landroid/preference/PreferenceGroupAdapter;

    .end local v9    # "preferenceAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v9, v7}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 535
    :cond_4
    :goto_1
    new-instance v11, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;

    invoke-direct {v11, p0, v4, v7, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v11}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 503
    return-void

    .line 529
    .restart local v9    # "preferenceAdapter":Landroid/widget/ListAdapter;
    :cond_5
    instance-of v11, v9, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_4

    .line 530
    check-cast v9, Landroid/widget/HeaderViewListAdapter;

    .end local v9    # "preferenceAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v9}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .local v3, "listAdapter":Landroid/widget/ListAdapter;
    move-object v11, v3

    .line 531
    check-cast v11, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    check-cast v3, Landroid/preference/PreferenceGroupAdapter;

    .end local v3    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v3, v7}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    goto :goto_1
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 262
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->registerObserverIfNeeded()V

    .line 322
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    if-eqz p1, :cond_0

    .line 185
    const-string/jumbo v1, "android:preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getHelpResource()I

    move-result v0

    .line 190
    .local v0, "helpResource":I
    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 195
    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    .line 181
    :cond_2
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "dialogId"    # I

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mHelpUri:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f110297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 205
    const v1, 0x7f110539

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/FloatingActionButton;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mFloatingActionButton:Lcom/android/settings/widget/FloatingActionButton;

    .line 206
    const v1, 0x7f1101a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mButtonBar:Landroid/view/ViewGroup;

    .line 207
    return-object v0
.end method

.method protected onDataSetChanged()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setPreferenceHighlighted(Z)V

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->updateEmptyView()V

    .line 393
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onDestroyView()V

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 338
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 345
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 333
    return-void
.end method

.method public onDetach()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    iput-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    .line 645
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onDetach()V

    .line 634
    return-void

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not dismiss dialog after onDetach"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDialogShowing()V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 272
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onPause()V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v1, ":settings:fragment_args_key"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 162
    .local v3, "titleRes":I
    if-nez v3, :cond_0

    const/4 v3, -0x1

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 164
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 166
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v3    # "titleRes":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_1
    return v6
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 282
    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onResume()V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 285
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 286
    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 289
    const-string/jumbo v3, "pref_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 292
    const-string/jumbo v3, "SettingsPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume(): key ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "pref_key"

    iget-object v4, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const-string/jumbo v3, "ds_ring_tone"

    iput-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 296
    .local v2, "root":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 297
    .local v1, "item":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 300
    :cond_1
    iput-object v6, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mClickPreferenceKey:Ljava/lang/String;

    .line 301
    const-string/jumbo v3, "pref_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 305
    .end local v1    # "item":Landroid/preference/Preference;
    .end local v2    # "root":Landroid/preference/PreferenceScreen;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->buildPreferenceForCOM()V

    .line 306
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    .line 311
    const-wide/16 v6, 0x46

    .line 306
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    const-string/jumbo v0, "android:preference_highlighted"

    iget-boolean v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->unregisterObserverIfNeeded()V

    .line 327
    return-void
.end method

.method public registerObserverIfNeeded()V
    .locals 2

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-nez v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDataSetChanged()V

    .line 365
    :cond_1
    return-void
.end method

.method protected removeCachedPrefs(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 1049
    iget-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1050
    .local v0, "p":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1048
    .end local v0    # "p":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 2
    .param p1, "dialogId"    # I

    .prologue
    const/4 v1, 0x0

    .line 670
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->dismiss()V

    .line 672
    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    .line 666
    :cond_0
    return-void
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 578
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 576
    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mEmptyView:Landroid/view/View;

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->updateEmptyView()V

    .line 420
    return-void
.end method

.method protected setEnableNextButtonImage(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/wifi/ButtonImageBarHandler;->setEnableNextButtonImage(Z)V

    .line 816
    return-void
.end method

.method public setHighlightPreferenceKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setLoading(ZZ)V
    .locals 3
    .param p1, "loading"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 359
    return-void

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f110540

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 362
    .local v0, "loading_container":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v2, v1, p2}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 357
    return-void

    .line 362
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->-set1(Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;

    .line 692
    :cond_0
    return-void
.end method

.method public setPinnedHeaderView(I)Landroid/view/View;
    .locals 4
    .param p1, "layoutResId"    # I

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 242
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, "pinnedHeader":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->setPinnedHeaderView(Landroid/view/View;)V

    .line 244
    return-object v1
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "pinnedHeader"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public setPreferenceHighlighted(Z)V
    .locals 0
    .param p1, "highlighted"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 175
    return-void
.end method

.method protected setResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 850
    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 848
    return-void
.end method

.method protected setResult(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 843
    return-void

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 841
    return-void
.end method

.method protected showDialog(I)V
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    .line 651
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v1, :cond_0

    .line 652
    const-string/jumbo v1, "SettingsPreferenceFragment"

    const-string/jumbo v2, "Old dialog fragment not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDialogFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v1, "SettingsPreferenceFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not show dialog after onSaveInstanceState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "titleRes"    # I
    .param p4, "requestCode"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 865
    .local v8, "activity":Landroid/app/Activity;
    instance-of v2, v8, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 866
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 867
    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p5

    move v3, p3

    move-object v5, p1

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 868
    const/4 v2, 0x1

    return v2

    .line 869
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :cond_0
    instance-of v2, v8, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v8

    .line 870
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 871
    .local v1, "sa":Landroid/preference/PreferenceActivity;
    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move-object v6, p1

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 872
    const/4 v2, 0x1

    return v2

    .line 874
    .end local v1    # "sa":Landroid/preference/PreferenceActivity;
    :cond_1
    const-string/jumbo v2, "SettingsPreferenceFragment"

    .line 875
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 877
    const-string/jumbo v4, ", requestCode: "

    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 877
    const-string/jumbo v4, ")"

    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v2, 0x0

    return v2
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 14
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 135
    if-eqz p4, :cond_1

    .line 136
    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    .end local v4    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 147
    .local v13, "activity":Landroid/app/Activity;
    instance-of v1, v13, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_2

    move-object v0, v13

    .line 148
    check-cast v0, Lcom/android/settings/SettingsActivity;

    .local v0, "sa":Lcom/android/settings/SettingsActivity;
    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    .line 149
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 132
    .end local v0    # "sa":Lcom/android/settings/SettingsActivity;
    :goto_1
    return-void

    .line 139
    .end local v13    # "activity":Landroid/app/Activity;
    .restart local v4    # "title":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ""

    .local v4, "title":Ljava/lang/String;
    goto :goto_0

    .line 151
    .end local v4    # "title":Ljava/lang/String;
    .restart local v13    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 152
    const/4 v12, 0x0

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p3

    move-object v11, v4

    .line 151
    invoke-static/range {v5 .. v12}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public unregisterObserverIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 381
    iput-object v2, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mCurrentRootAdapter:Landroid/widget/ListAdapter;

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 377
    :cond_1
    return-void
.end method
