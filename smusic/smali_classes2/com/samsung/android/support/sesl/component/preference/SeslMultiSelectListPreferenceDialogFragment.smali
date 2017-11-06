.class public Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;
.source "SeslMultiSelectListPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_CHANGED:Ljava/lang/String; = "SeslMultiSelectListPreferenceDialogFragment.changed"

.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "SeslMultiSelectListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "SeslMultiSelectListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_VALUES:Ljava/lang/String; = "SeslMultiSelectListPreferenceDialogFragment.values"


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method private getListPreference()Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->getPreference()Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;-><init>()V

    .line 49
    .local v1, "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 50
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-nez p1, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->getListPreference()Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;

    move-result-object v0

    .line 62
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SeslMultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 80
    .end local v0    # "preference":Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;
    :goto_0
    return-void

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    const-string v2, "SeslMultiSelectListPreferenceDialogFragment.values"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 76
    const-string v1, "SeslMultiSelectListPreferenceDialogFragment.changed"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 77
    const-string v1, "SeslMultiSelectListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 78
    const-string v1, "SeslMultiSelectListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->getListPreference()Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;

    move-result-object v0

    .line 121
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;
    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    if-eqz v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    .line 123
    .local v1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 127
    .end local v1    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    .line 128
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V

    .line 99
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v3

    .line 100
    .local v1, "entryCount":I
    new-array v0, v1, [Z

    .line 101
    .local v0, "checkedItems":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 102
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    new-instance v4, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)V

    invoke-virtual {p1, v3, v0, v4}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 116
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "SeslMultiSelectListPreferenceDialogFragment.values"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mNewValues:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    const-string v0, "SeslMultiSelectListPreferenceDialogFragment.changed"

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mPreferenceChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v0, "SeslMultiSelectListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 88
    const-string v0, "SeslMultiSelectListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method
