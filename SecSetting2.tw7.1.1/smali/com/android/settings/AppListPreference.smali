.class public Lcom/android/settings/AppListPreference;
.super Lcom/samsung/android/settings/SettingsListPreference;
.source "AppListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$AppArrayAdapter;,
        Lcom/android/settings/AppListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mDescription:I

.field private mEntryDrawables:[Landroid/graphics/drawable/Drawable;

.field protected final mForWork:Z

.field private mShowItemNone:Z

.field private mSummaries:[Ljava/lang/CharSequence;

.field private mSystemAppIndex:I

.field private mUseComponent:Z

.field protected final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/AppListPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/AppListPreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/AppListPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mUseComponent:Z

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    .line 150
    sget-object v2, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    .line 152
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    .line 153
    .local v1, "managedProfile":Landroid/os/UserHandle;
    iget-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    .line 147
    return-void

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "defAttrs"    # I

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/SettingsListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 77
    iput-boolean v3, p0, Lcom/android/settings/AppListPreference;->mUseComponent:Z

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    .line 140
    sget-object v2, Lcom/android/settings/R$styleable;->WorkPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    .line 142
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    .line 143
    .local v1, "managedProfile":Landroid/os/UserHandle;
    iget-boolean v2, p0, Lcom/android/settings/AppListPreference;->mForWork:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    .line 137
    return-void

    .line 144
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 9

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "selectedValue":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 275
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 276
    .local v7, "selectedNone":Z
    :goto_0
    if-eqz v7, :cond_2

    const/4 v6, -0x1

    .line 277
    .local v6, "selectedIndex":I
    :goto_1
    new-instance v0, Lcom/android/settings/AppListPreference$AppArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    const v3, 0x7f04003e

    move-object v1, p0

    .line 277
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$AppArrayAdapter;-><init>(Lcom/android/settings/AppListPreference;Landroid/content/Context;I[Ljava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;I)V

    return-object v0

    .line 274
    .end local v6    # "selectedIndex":I
    .end local v7    # "selectedNone":Z
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 276
    .restart local v7    # "selectedNone":Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v6

    .restart local v6    # "selectedIndex":I
    goto :goto_1
.end method

.method public getResDescription()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    return v0
.end method

.method protected getSoleAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 311
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 325
    instance-of v6, p1, Lcom/android/settings/AppListPreference$SavedState;

    if-eqz v6, :cond_3

    move-object v5, p1

    .line 326
    check-cast v5, Lcom/android/settings/AppListPreference$SavedState;

    .line 327
    .local v5, "savedState":Lcom/android/settings/AppListPreference$SavedState;
    iget-boolean v6, v5, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    iput-boolean v6, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 329
    iget-boolean v6, p0, Lcom/android/settings/AppListPreference;->mUseComponent:Z

    if-eqz v6, :cond_2

    .line 330
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    .line 331
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    array-length v3, v6

    .line 332
    .local v3, "entryCount":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v0, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 335
    .local v2, "defaultCN":Landroid/content/ComponentName;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 337
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 336
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 341
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ComponentName;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 342
    .local v1, "componentNamesArray":[Landroid/content/ComponentName;
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 349
    .end local v0    # "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1    # "componentNamesArray":[Landroid/content/ComponentName;
    .end local v2    # "defaultCN":Landroid/content/ComponentName;
    .end local v3    # "entryCount":I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    iput-object v6, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 350
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-super {p0, v6}, Lcom/samsung/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 324
    .end local v5    # "savedState":Lcom/android/settings/AppListPreference$SavedState;
    :goto_2
    return-void

    .line 346
    .restart local v5    # "savedState":Lcom/android/settings/AppListPreference$SavedState;
    :cond_2
    iget-object v6, v5, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    iget-object v7, v5, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 352
    .end local v5    # "savedState":Lcom/android/settings/AppListPreference$SavedState;
    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 319
    invoke-super {p0}, Lcom/samsung/android/settings/SettingsListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 320
    .local v5, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState;

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V

    return-object v0
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentNames"    # [Landroid/content/ComponentName;
    .param p2, "defaultCN"    # Landroid/content/ComponentName;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/AppListPreference;->setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setComponentNames([Landroid/content/ComponentName;Landroid/content/ComponentName;[Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "componentNames"    # [Landroid/content/ComponentName;
    .param p2, "defaultCN"    # Landroid/content/ComponentName;
    .param p3, "summaries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 227
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/settings/AppListPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 229
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/AppListPreference;->mUseComponent:Z

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 232
    .local v7, "pm":Landroid/content/pm/PackageManager;
    array-length v11, p1

    iget-boolean v10, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    add-int v4, v11, v10

    .line 233
    .local v4, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v2, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v9, "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v5, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v8, -0x1

    .line 237
    .local v8, "selectedIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v10, p1

    if-ge v6, v10, :cond_3

    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 240
    aget-object v11, p1, v6

    iget v12, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    const/4 v13, 0x0

    .line 239
    invoke-interface {v10, v11, v13, v12}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 241
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_2

    .line 237
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 232
    .end local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "entryCount":I
    .end local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v6    # "i":I
    .end local v8    # "selectedIndex":I
    .end local v9    # "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 242
    .restart local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v4    # "entryCount":I
    .restart local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .restart local v6    # "i":I
    .restart local v8    # "selectedIndex":I
    .restart local v9    # "validatedComponentNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    aget-object v10, p1, v6

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v1, v7, v10, v11}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    if-eqz p2, :cond_0

    aget-object v10, p1, v6

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    move v8, v6

    goto :goto_2

    .line 253
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_3
    iget-boolean v10, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v10, :cond_4

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b1dc9

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 254
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string/jumbo v10, ""

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f020205

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 262
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    .line 261
    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 263
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 265
    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    .line 266
    invoke-virtual {p0, v8}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 226
    :goto_3
    return-void

    .line 268
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 248
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method protected setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SettingsListPreference;->setFullScreenLayout(Landroid/content/Context;Landroid/view/View;)V

    .line 285
    const v3, 0x7f1102e4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, "descContainerView":Landroid/view/View;
    const v3, 0x7f1102e5

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 288
    .local v1, "descView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    const v2, 0x7f0b01ea

    .line 289
    .local v2, "resStr":I
    :goto_0
    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 282
    :cond_0
    return-void

    .line 288
    .end local v2    # "resStr":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getResDescription()I

    move-result v2

    goto :goto_0
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/AppListPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 14
    .param p1, "packageNames"    # [Ljava/lang/CharSequence;
    .param p2, "defaultPackageName"    # Ljava/lang/CharSequence;
    .param p3, "systemPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 169
    .local v8, "pm":Landroid/content/pm/PackageManager;
    array-length v12, p1

    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_0
    add-int v4, v12, v11

    .line 170
    .local v4, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v2, "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v10, "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v5, "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    const/4 v9, -0x1

    .line 174
    .local v9, "selectedIndex":I
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I

    .line 175
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v11, p1

    if-ge v6, v11, :cond_4

    .line 177
    :try_start_0
    aget-object v11, p1, v6

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 178
    iget v12, p0, Lcom/android/settings/AppListPreference;->mUserId:I

    .line 177
    const/4 v13, 0x0

    invoke-virtual {v8, v11, v13, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 179
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 183
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_0

    .line 184
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v1, v8, v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 186
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    if-eqz p2, :cond_1

    .line 189
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 188
    if-eqz v11, :cond_1

    .line 190
    move v9, v6

    .line 192
    :cond_1
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    if-eqz p3, :cond_2

    .line 193
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 192
    if-eqz v11, :cond_2

    .line 194
    iput v6, p0, Lcom/android/settings/AppListPreference;->mSystemAppIndex:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 169
    .end local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "entryCount":I
    .end local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .end local v6    # "i":I
    .end local v9    # "selectedIndex":I
    .end local v10    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 201
    .restart local v2    # "applicationNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v4    # "entryCount":I
    .restart local v5    # "entryDrawables":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    .restart local v6    # "i":I
    .restart local v9    # "selectedIndex":I
    .restart local v10    # "validatedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_4
    iget-boolean v11, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    if-eqz v11, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b1dc9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 202
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string/jumbo v11, ""

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 211
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    .line 210
    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/android/settings/AppListPreference;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 214
    const/4 v11, -0x1

    if-eq v9, v11, :cond_6

    .line 215
    invoke-virtual {p0, v9}, Lcom/android/settings/AppListPreference;->setValueIndex(I)V

    .line 166
    :goto_3
    return-void

    .line 217
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/settings/AppListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 196
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2
.end method

.method public setResDescription(I)V
    .locals 0
    .param p1, "desc"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/android/settings/AppListPreference;->mDescription:I

    .line 295
    return-void
.end method

.method public setShowItemNone(Z)V
    .locals 0
    .param p1, "showItemNone"    # Z

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/android/settings/AppListPreference;->mShowItemNone:Z

    .line 157
    return-void
.end method

.method protected setSoleAppLabelAsSummary()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference;->getSoleAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 361
    .local v0, "soleLauncherLabel":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 359
    :cond_0
    return-void
.end method
