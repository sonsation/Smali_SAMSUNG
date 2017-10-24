.class public Lcom/samsung/android/settingslib/RestrictedPreference;
.super Landroid/preference/Preference;
.source "RestrictedPreference.java"


# instance fields
.field mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    .line 45
    sget v0, Lcom/android/settingslib/R$layout;->restricted_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/RestrictedPreference;->setWidgetLayoutResource(I)V

    .line 46
    new-instance v0, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public isDisabledByAdmin()Z
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 90
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 88
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    iget-object v2, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->onBindView(Landroid/view/View;)V

    .line 66
    sget v2, Lcom/android/settingslib/R$id;->restricted_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "restrictedIcon":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    iget v1, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    if-lez v1, :cond_1

    .line 72
    iget v1, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 62
    :cond_1
    return-void

    .line 68
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 77
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settingslib/RestrictedPreference;->mHelper:Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 102
    return-void
.end method
