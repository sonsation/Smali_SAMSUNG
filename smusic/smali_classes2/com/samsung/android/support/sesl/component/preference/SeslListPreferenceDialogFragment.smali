.class public Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;
.super Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;
.source "SeslListPreferenceDialogFragment.java"


# static fields
.field private static final SAVE_STATE_ENTRIES:Ljava/lang/String; = "SeslListPreferenceDialogFragment.entries"

.field private static final SAVE_STATE_ENTRY_VALUES:Ljava/lang/String; = "SeslListPreferenceDialogFragment.entryValues"

.field private static final SAVE_STATE_INDEX:Ljava/lang/String; = "SeslListPreferenceDialogFragment.index"


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getListPreference()Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->getPreference()Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;-><init>()V

    .line 38
    .local v1, "fragment":Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 39
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-nez p1, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->getListPreference()Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;

    move-result-object v0

    .line 50
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SeslListPreference requires an entries array and an entryValues array."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 56
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    .line 63
    .end local v0    # "preference":Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
    :goto_0
    return-void

    .line 59
    :cond_2
    const-string v1, "SeslListPreferenceDialogFragment.index"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 60
    const-string v1, "SeslListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    .line 61
    const-string v1, "SeslListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->getListPreference()Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;

    move-result-object v0

    .line 107
    .local v0, "preference":Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    if-ltz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 101
    invoke-virtual {p1, v3, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "SeslListPreferenceDialogFragment.index"

    iget v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v0, "SeslListPreferenceDialogFragment.entries"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 70
    const-string v0, "SeslListPreferenceDialogFragment.entryValues"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
