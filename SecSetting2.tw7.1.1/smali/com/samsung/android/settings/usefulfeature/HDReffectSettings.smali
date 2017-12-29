.class public Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "HDReffectSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;
    }
.end annotation


# instance fields
.field private hrdView:Landroid/view/View;

.field private mAppListPreference:Landroid/preference/PreferenceCategory;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHDRSummary:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mList:[Ljava/lang/String;

.field private mPkgname:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPkgname:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    .line 288
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 54
    return-void
.end method

.method private SetImage(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02065c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f02065d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private SetScreenView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 171
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040140

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    const v2, 0x7f110432

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHDRSummary:Landroid/widget/TextView;

    .line 174
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Galaxy Note7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHDRSummary:Landroid/widget/TextView;

    const v2, 0x7f0b04f0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    const v2, 0x7f11010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 167
    return-void
.end method

.method private setAppListUp()V
    .locals 21

    .prologue
    .line 193
    const-string/jumbo v17, "HDReffectSettings"

    const-string/jumbo v18, "setAppListUp start "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 197
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070092

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 198
    .local v11, "mList1":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070096

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, "mList2":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    const-string/jumbo v17, "HDReffectSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setAppListUp mList.length "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 206
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 207
    .local v10, "iconResizer":Lcom/samsung/android/settings/IconResizer;
    const v17, 0x7f0a0023

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 208
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    .line 210
    .local v14, "pkgName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 211
    .local v4, "AppInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    .line 212
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 213
    .local v16, "resizedIcon":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 215
    .local v13, "mName":Ljava/lang/String;
    const/16 v17, 0x80

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 219
    .end local v4    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v4, :cond_3

    .line 220
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 221
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 222
    .local v13, "mName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 223
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v6

    .line 224
    .local v6, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v13

    .line 226
    .end local v6    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_1
    if-nez v9, :cond_2

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->getDefaultActivityIconForTray(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 230
    :cond_2
    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 232
    .local v16, "resizedIcon":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 233
    .local v5, "appPreference":Landroid/preference/Preference;
    invoke-virtual {v5, v14}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v5, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 236
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 237
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    .end local v5    # "appPreference":Landroid/preference/Preference;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "mName":Ljava/lang/String;
    .end local v16    # "resizedIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 216
    .restart local v4    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "icon":Landroid/graphics/drawable/Drawable;
    .local v13, "mName":Ljava/lang/String;
    .local v16, "resizedIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 273
    .end local v4    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "mName":Ljava/lang/String;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v16    # "resizedIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v17, "HDReffectSettings"

    const-string/jumbo v18, "setAppListUp end "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 143
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetScreenView()V

    .line 146
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetScreenView()V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hdr_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, "switchState":I
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string/jumbo v0, "HDReffectSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->addPreferencesFromResource(I)V

    .line 87
    const-string/jumbo v0, "hdr_effect_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/preference/PreferenceCategory;

    .line 89
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 83
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 136
    const-string/jumbo v0, "HDReffectSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 134
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "VideoEnhancer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 96
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_0
    const-string/jumbo v5, "HDReffectSettings"

    const-string/jumbo v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdr_effect"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_1

    const/4 v1, 0x1

    .line 102
    .local v1, "hdreffectCheck":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdr_effect"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 103
    .local v3, "switchState":I
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setAppListUp()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "sem_perfomance_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 105
    .local v2, "perfomanceMode":I
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 107
    const/4 v1, 0x0

    .line 108
    const/4 v3, 0x0

    .line 118
    .end local v1    # "hdreffectCheck":Z
    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    .line 119
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 120
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 122
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "VideoEnhancer"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 93
    return-void

    .line 101
    .end local v2    # "perfomanceMode":I
    .end local v3    # "switchState":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hdreffectCheck":Z
    goto :goto_0

    .line 109
    .restart local v2    # "perfomanceMode":I
    .restart local v3    # "switchState":I
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x2

    if-ne v2, v5, :cond_5

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pbm_video_enhancer"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 112
    .local v0, "checked":Z
    :goto_2
    move v1, v0

    .line 113
    .local v1, "hdreffectCheck":Z
    if-eqz v0, :cond_4

    const/4 v3, 0x1

    .line 114
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    .end local v0    # "checked":Z
    .local v1, "hdreffectCheck":Z
    :cond_3
    move v0, v4

    .line 111
    goto :goto_2

    .line 113
    .restart local v0    # "checked":Z
    .local v1, "hdreffectCheck":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 116
    .end local v0    # "checked":Z
    .local v1, "hdreffectCheck":Z
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 150
    const-string/jumbo v1, "HDReffectSettings"

    const-string/jumbo v2, "onSwitchChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 152
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hdr_effect"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f01f3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_1

    const/16 v1, 0x3e8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    .line 149
    return-void

    .line 151
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
