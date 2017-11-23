.class public Lcom/samsung/android/settings/activekey/ActiveKeySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ActiveKeySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentHeaderView:Landroid/view/View;

.field private mDoublePress:Landroid/preference/PreferenceScreen;

.field private mLongPress:Landroid/preference/PreferenceScreen;

.field private mOnLockScreen:Landroid/preference/SwitchPreference;

.field private mShortPress:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    .line 51
    return-void
.end method

.method private getXCoverKeyDescString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 363
    const-string/jumbo v0, "&#8226 "

    .line 364
    .local v0, "bullet":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v7, "xcover_summary":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0353

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "summary1":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0354

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "summary2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0355

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "summary3":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0356

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "summary4":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0357

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "summary5":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0358

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "summary5extra":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string/jumbo v8, "<br/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private updateDescriptionUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 146
    iget-object v6, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result v3

    .line 148
    .local v3, "isRemoved":Z
    const-string/jumbo v6, "ActiveKeySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "refreshUI() - isRemoved: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v3    # "isRemoved":Z
    :cond_0
    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 152
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040022

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "activekeySettingsView":Landroid/view/View;
    const v6, 0x7f110121

    .line 154
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 156
    .local v5, "tvSummary":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getXCoverKeyDescString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_0
    const v6, 0x7f110122

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 168
    .local v1, "guideImage":Landroid/widget/ImageView;
    const-string/jumbo v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "productName":Ljava/lang/String;
    const-string/jumbo v6, "poseidonlteuc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f020468

    .line 170
    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->semGetListView()Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 175
    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mCurrentHeaderView:Landroid/view/View;

    .line 144
    return-void

    .line 160
    .end local v1    # "guideImage":Landroid/widget/ImageView;
    .end local v4    # "productName":Ljava/lang/String;
    :cond_2
    const v6, 0x7f0b034b

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0b0340

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    const v7, 0x7f0b0345

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatePressActionItems()V
    .locals 11

    .prologue
    const v10, 0x7f0b046a

    const v9, 0x7f0b035e

    const v8, 0x7f0b035d

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "shortPressDB":Ljava/lang/String;
    const-string/jumbo v5, "short_press_app"

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "short_press_app":Ljava/lang/String;
    const/4 v0, 0x0

    .line 184
    .local v0, "longPressDB":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "long_press_app":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app_battery_conserve"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "longPressDB":Ljava/lang/String;
    const-string/jumbo v5, "short_press_app_battery_conserve"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "long_press_app":Ljava/lang/String;
    :goto_0
    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shortpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string/jumbo v5, "ActiveKeySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "longpress : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "productName":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 200
    if-eqz v3, :cond_3

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 214
    :goto_1
    if-eqz v1, :cond_1

    const-string/jumbo v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 216
    if-eqz v0, :cond_6

    const-string/jumbo v5, "torch/torch"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 217
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 178
    :goto_2
    return-void

    .line 189
    .end local v2    # "productName":Ljava/lang/String;
    .local v0, "longPressDB":Ljava/lang/String;
    .local v1, "long_press_app":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "longPressDB":Ljava/lang/String;
    const-string/jumbo v5, "long_press_app"

    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "long_press_app":Ljava/lang/String;
    goto/16 :goto_0

    .line 203
    .restart local v2    # "productName":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 205
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "short_press_app"

    .line 207
    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 206
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 211
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 219
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_2

    .line 221
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "long_press_app"

    .line 223
    const-string/jumbo v7, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 222
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 226
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updatePressActionItemsGridViewConcept()V
    .locals 12

    .prologue
    const v11, 0x7f0b08b2

    const v10, 0x7f0b08b1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v8}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v3

    .line 238
    .local v3, "shortPressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b1ad9

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 250
    :goto_0
    invoke-static {v0, v9}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v2

    .line 252
    .local v2, "longPressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b1ad9

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 264
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 266
    const/4 v4, 0x2

    .line 265
    invoke-static {v0, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyAppInfo(Landroid/content/Context;I)Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;

    move-result-object v1

    .line 267
    .local v1, "doublePressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b1ad9

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 232
    .end local v1    # "doublePressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    :cond_3
    :goto_2
    return-void

    .line 238
    .end local v2    # "longPressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    :cond_4
    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    iget-object v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    const-string/jumbo v4, ""

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 241
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 242
    :cond_6
    iget-boolean v4, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_7

    .line 243
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 244
    iget-object v7, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    .line 243
    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    iget-object v5, v3, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    .restart local v2    # "longPressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    :cond_8
    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    iget-object v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    const-string/jumbo v4, ""

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 255
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_1

    .line 256
    :cond_a
    iget-boolean v4, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_b

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 258
    iget-object v7, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    .line 257
    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 260
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    iget-object v5, v2, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 268
    .restart local v1    # "doublePressInfo":Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;
    :cond_c
    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mDB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 267
    if-nez v4, :cond_2

    .line 270
    iget-object v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    const-string/jumbo v4, ""

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 271
    :cond_d
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    .line 272
    :cond_e
    iget-boolean v4, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mIsEnabled:Z

    if-nez v4, :cond_f

    .line 273
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    .line 274
    iget-object v7, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    aput-object v7, v6, v8

    .line 273
    invoke-virtual {v5, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 276
    :cond_f
    iget-object v4, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    iget-object v5, v1, Lcom/samsung/android/settings/activekey/ActiveKeyInfo$ActiveKeyAppInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getApplicationName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "dbValue"    # Ljava/lang/String;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 282
    const-string/jumbo v2, ""

    .line 283
    .local v2, "appName":Ljava/lang/String;
    const-string/jumbo v7, "ActiveKeySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "db: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz p1, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 285
    :cond_0
    return-object v2

    .line 287
    :cond_1
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 288
    .local v5, "package_index":I
    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "package_name":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "activity_name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 293
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    const-string/jumbo v7, "short_press_app_battery_conserve"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 295
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/16 v9, 0x280

    .line 294
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 302
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 307
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1
    return-object v2

    .line 298
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 299
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/16 v9, 0x80

    .line 298
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .line 303
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "ActiveKeySettings"

    const-string/jumbo v8, "cannot find app name !"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    .line 104
    :goto_0
    const-string/jumbo v0, "short_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    .line 105
    const-string/jumbo v0, "long_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    .line 106
    const-string/jumbo v0, "double_press_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mDoublePress:Landroid/preference/PreferenceScreen;

    .line 107
    const-string/jumbo v0, "active_key_on_lockscreen_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const v0, 0x7f08015c

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const v0, 0x7f08015d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 101
    :cond_2
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 135
    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 333
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 334
    .local v0, "value":Z
    iget-object v3, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, p1}, Landroid/preference/SwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    .line 336
    if-eqz v0, :cond_0

    move v1, v2

    .line 335
    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    return v2

    .line 339
    :cond_1
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 311
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mShortPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "short"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 319
    return v3

    .line 320
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mLongPress:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 322
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.activekey.AppList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string/jumbo v1, "pressed_type"

    const-string/jumbo v2, "long"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 325
    return v3

    .line 327
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "warningClearIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.settings.ACTIVE_KEY_CLEAR"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updateDescriptionUI()V

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKeyGridViewConcept()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItemsGridViewConcept()V

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->mOnLockScreen:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "active_key_on_lockscreen"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    const-string/jumbo v1, "ActiveKeySettings"

    const-string/jumbo v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeySettings;->updatePressActionItems()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 141
    const-string/jumbo v0, "ActiveKeySettings"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method
