.class public abstract Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ProfileSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getIntentActionString()Ljava/lang/String;
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    const-string/jumbo v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 48
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settingslib/drawer/UserAdapter;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settingslib/drawer/UserAdapter;

    move-result-object v0

    .line 49
    .local v0, "profileSpinnerAdapter":Lcom/android/settingslib/drawer/UserAdapter;
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/UserAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 51
    return-void

    .line 52
    :cond_0
    const v3, 0x7f040300

    invoke-virtual {p0, v3}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 53
    .local v1, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 54
    new-instance v3, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;-><init>(Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;Lcom/android/settingslib/drawer/UserAdapter;Landroid/widget/Spinner;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 44
    .end local v1    # "spinner":Landroid/widget/Spinner;
    :cond_1
    return-void
.end method
