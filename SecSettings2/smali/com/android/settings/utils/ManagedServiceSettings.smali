.class public abstract Lcom/android/settings/utils/ManagedServiceSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/ManagedServiceSettings$Config;,
        Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field protected mContext:Landroid/content/Context;

.field private mPM:Landroid/content/pm/PackageManager;

.field protected mServiceListing:Lcom/android/settings/utils/ServiceListing;


# direct methods
.method static synthetic -get0(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/utils/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0
    .param p1, "services"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 62
    return-void
.end method

.method private updateList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 116
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 117
    new-instance v6, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "service$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 119
    .local v3, "service":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "title":Ljava/lang/String;
    new-instance v1, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "pref":Landroid/preference/SwitchPreference;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 123
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v6, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    invoke-virtual {v6, v0}, Lcom/android/settings/utils/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 126
    new-instance v6, Lcom/android/settings/utils/ManagedServiceSettings$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/android/settings/utils/ManagedServiceSettings$2;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 114
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "pref":Landroid/preference/SwitchPreference;
    .end local v3    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 72
    new-instance v0, Lcom/android/settings/utils/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    .line 73
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    new-instance v1, Lcom/android/settings/utils/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/utils/ManagedServiceSettings$1;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ServiceListing;->addCallback(Lcom/android/settings/utils/ServiceListing$Callback;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ServiceListing;->setListening(Z)V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 91
    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    invoke-virtual {v1}, Lcom/android/settings/utils/ServiceListing;->reload()Ljava/util/List;

    .line 92
    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings/utils/ServiceListing;->setListening(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 94
    .local v12, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    .line 95
    .local v11, "isRTL":Z
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 96
    .local v13, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a04c4

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    const v3, 0x7f0a04ba

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 96
    add-int/2addr v1, v3

    .line 98
    const v3, 0x7f0a0022

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 96
    add-int v4, v1, v3

    .line 99
    .local v4, "divider_inset_size":I
    if-eqz v11, :cond_0

    .line 100
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v12}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 101
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :goto_0
    return-void

    .line 103
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v12}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v5, v0

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 104
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f0b1635

    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings;->setEmptyText(I)V

    .line 83
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 138
    if-nez p3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    invoke-virtual {v0, p1, v3}, Lcom/android/settings/utils/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 141
    return v1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    invoke-virtual {v0, p1}, Lcom/android/settings/utils/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    return v1

    .line 147
    :cond_1
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    return v3
.end method
