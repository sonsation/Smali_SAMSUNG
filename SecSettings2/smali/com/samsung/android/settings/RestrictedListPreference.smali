.class public Lcom/samsung/android/settings/RestrictedListPreference;
.super Lcom/samsung/android/settings/SettingsListPreference;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;,
        Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    }
.end annotation


# instance fields
.field protected mClickedDialogEntryIndex:I

.field private final mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private mLastCheckedPosition:I

.field private final mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 1
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/RestrictedListPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/RestrictedListPreference;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getLastCheckedPosition()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    .line 53
    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    .line 59
    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    .line 57
    return-void
.end method

.method private getLastCheckedPosition()I
    .locals 2

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    .line 149
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    return v0
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 4
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 121
    if-nez p1, :cond_0

    .line 122
    return-object v3

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    .line 125
    .local v0, "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v2, v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    return-object v0

    .line 129
    .end local v0    # "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addRestrictedItem(Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;)V
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 134
    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v3

    .line 134
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/samsung/android/settings/RestrictedListPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/RestrictedListPreference$1;-><init>(Lcom/samsung/android/settings/RestrictedListPreference;)V

    .line 192
    .local v0, "listItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    return-object v0
.end method

.method public getSelectedValuePos()I
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "selectedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 142
    .local v0, "selectedIndex":I
    :goto_0
    return v0

    .line 141
    .end local v0    # "selectedIndex":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 101
    if-nez p1, :cond_0

    .line 102
    return v3

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;

    .line 105
    .local v0, "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v2, v0, Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    const/4 v2, 0x1

    return v2

    .line 109
    .end local v0    # "item":Lcom/samsung/android/settings/RestrictedListPreference$RestrictedItem;
    :cond_2
    return v3
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onBindView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsListPreference;->onClick()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mClickedDialogEntryIndex:I

    .line 76
    return-void
.end method

.method protected setClickedDialogEntryIndex(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mClickedDialogEntryIndex:I

    .line 158
    iput p1, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mLastCheckedPosition:I

    .line 156
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->notifyChanged()V

    .line 90
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/RestrictedListPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->setEnabled(Z)V

    .line 82
    return-void
.end method
