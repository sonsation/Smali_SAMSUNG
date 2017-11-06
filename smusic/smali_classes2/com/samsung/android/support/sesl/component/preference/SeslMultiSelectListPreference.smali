.class public Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;
.super Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;
.source "SeslMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 59
    sget-object v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMultiSelectListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMultiSelectListPreference_android_entries:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 65
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMultiSelectListPreference_android_entryValues:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 229
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 228
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method protected getSelectedItems()[Z
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 239
    .local v0, "entries":[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 240
    .local v1, "entryCount":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 241
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 243
    .local v3, "result":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 244
    aget-object v5, v0, v2

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-object v3
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 6
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 252
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    .local v1, "defaultValues":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 256
    .local v0, "defaultValue":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    return-object v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 282
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 291
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 288
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;

    .line 289
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 290
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 269
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/preference/internal/SeslAbstractMultiSelectListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 270
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 275
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 276
    .local v0, "myState":Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference$SavedState;->values:Ljava/util/Set;

    move-object v1, v0

    .line 277
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 265
    return-void

    .line 264
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    :goto_0
    return v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-static {}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->getInstance()Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/core/content/SeslSharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 112
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 153
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 181
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 211
    return-void
.end method
