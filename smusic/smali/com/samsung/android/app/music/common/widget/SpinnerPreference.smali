.class public Lcom/samsung/android/app/music/common/widget/SpinnerPreference;
.super Landroid/preference/Preference;
.source "SpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;,
        Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private final mEntrySummaries:[Ljava/lang/CharSequence;

.field private mIsSelectEnabled:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mSummaryColorEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mIsSelectEnabled:Z

    .line 35
    iput-boolean v5, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSummaryColorEnabled:Z

    .line 39
    sget-object v6, Lcom/samsung/android/app/music/R$styleable;->SpinnerPreference:[I

    invoke-virtual {p1, p2, v6, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 41
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    iget-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v6, :cond_0

    .line 45
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "SpinnerPreference requires an entries array."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 48
    :cond_0
    new-instance v6, Landroid/widget/Spinner;

    invoke-direct {v6, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    .line 49
    iget-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v4, "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;>;"
    const/4 v2, 0x0

    .line 52
    .local v2, "count":I
    iget-object v6, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 53
    .local v3, "entry":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    array-length v8, v8

    if-ge v2, v8, :cond_1

    .line 54
    new-instance v8, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;

    iget-object v9, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    aget-object v9, v9, v2

    invoke-direct {v8, v3, v9}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v8, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;

    invoke-direct {v8, v3}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    .end local v3    # "entry":Ljava/lang/CharSequence;
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;

    invoke-direct {v1, p1, v4}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 62
    .local v1, "adapter":Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$1;-><init>(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    new-instance v5, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$2;-><init>(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mIsSelectEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mIsSelectEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->persistInt(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/widget/SpinnerPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/widget/SpinnerPreference;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private updateAdapter()V
    .locals 9

    .prologue
    .line 132
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 133
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "SpinnerPreference requires an entries array."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 135
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "libraryItems":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;>;"
    const/4 v1, 0x0

    .line 137
    .local v1, "count":I
    iget-object v5, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v2, v5, v4

    .line 138
    .local v2, "entry":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 139
    new-instance v7, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;

    iget-object v8, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntrySummaries:[Ljava/lang/CharSequence;

    aget-object v8, v8, v1

    invoke-direct {v7, v2, v8}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v7, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;

    invoke-direct {v7, v2}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$PreferenceItem;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v2    # "entry":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;

    .line 146
    .local v0, "adapter":Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->clear()V

    .line 147
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference$SpinnerPopupWindowAdapter;->addAll(Ljava/util/Collection;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 154
    .local v1, "parent":Landroid/view/ViewParent;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 157
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    if-eqz v1, :cond_1

    .line 158
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "parent":Landroid/view/ViewParent;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v2, p1

    .line 160
    check-cast v2, Landroid/view/ViewGroup;

    .line 161
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 162
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    iget-object v3, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->updateAdapter()V

    .line 129
    return-void
.end method

.method public setSummary(I)V
    .locals 5
    .param p1, "summaryResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSummaryColorEnabled:Z

    if-eqz v2, :cond_0

    .line 104
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 105
    .local v1, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 106
    .local v0, "color":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 107
    invoke-super {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    .end local v0    # "color":I
    .end local v1    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 91
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSummaryColorEnabled:Z

    if-eqz v2, :cond_0

    .line 92
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v1, "sp":Landroid/text/Spannable;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 94
    .local v0, "color":I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v1, v2, v4, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 95
    invoke-super {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0    # "color":I
    .end local v1    # "sp":Landroid/text/Spannable;
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSummaryColorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSummaryColorEnabled:Z

    .line 115
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 119
    const/4 p1, 0x0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/widget/SpinnerPreference;->persistInt(I)Z

    .line 124
    return-void
.end method
