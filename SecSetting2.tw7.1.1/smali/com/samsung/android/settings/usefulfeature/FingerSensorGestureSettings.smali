.class public Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "FingerSensorGestureSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;,
        Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;,
        Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;,
        Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private final mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

.field private mFingerSensorGestureView:Landroid/view/View;

.field private mSamsungPay:Landroid/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSupportSpay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 51
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    .line 63
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 63
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$2;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    .line 269
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$4;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 36
    return-void
.end method

.method private createFingerGestureView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b0502

    .line 116
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 117
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040369

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    .line 118
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    const v6, 0x7f110600

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 119
    .local v4, "mTitleView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    const v6, 0x7f110601

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .local v3, "mSummaryView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    const v6, 0x7f1105ff

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    .local v2, "mAnimationView":Landroid/widget/ImageView;
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 123
    const v5, 0x7f0b0505

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v5, 0x7f02014e

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 126
    .local v0, "ani":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 127
    new-instance v5, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$5;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings$5;-><init>(Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-nez v5, :cond_1

    .line 134
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    return-object v5
.end method

.method private static isSamsungPayGestureEnabled(Landroid/content/Context;)Z
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, "isSamsungPaySettingOn":Z
    const/4 v5, 0x0

    .line 212
    .local v5, "isSamsungPayCardRegistered":Z
    :try_start_0
    const-string/jumbo v10, "content://com.samsung.android.spay.common.share/global"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 213
    .local v7, "spayUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "GET_global"

    .line 214
    const-string/jumbo v12, "samsung_pay_favorite_cards_on_home"

    const/4 v13, 0x0

    .line 213
    invoke-virtual {v10, v7, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 215
    .local v0, "b1":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "GET_global"

    .line 216
    const-string/jumbo v12, "samsung_pay_favorite_cards_enable"

    const/4 v13, 0x0

    .line 215
    invoke-virtual {v10, v7, v11, v12, v13}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 217
    .local v1, "b2":Landroid/os/Bundle;
    const-string/jumbo v10, "value"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, "value1":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "value2":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v14, :cond_0

    const/4 v6, 0x1

    .line 220
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-ne v10, v14, :cond_1

    const/4 v5, 0x1

    .line 228
    .end local v0    # "b1":Landroid/os/Bundle;
    .end local v1    # "b2":Landroid/os/Bundle;
    .end local v7    # "spayUri":Landroid/net/Uri;
    .end local v8    # "value1":Ljava/lang/String;
    .end local v9    # "value2":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_2

    .end local v5    # "isSamsungPayCardRegistered":Z
    :goto_2
    return v5

    .line 219
    .restart local v0    # "b1":Landroid/os/Bundle;
    .restart local v1    # "b2":Landroid/os/Bundle;
    .restart local v5    # "isSamsungPayCardRegistered":Z
    .restart local v7    # "spayUri":Landroid/net/Uri;
    .restart local v8    # "value1":Ljava/lang/String;
    .restart local v9    # "value2":Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 220
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 225
    .end local v0    # "b1":Landroid/os/Bundle;
    .end local v1    # "b2":Landroid/os/Bundle;
    .end local v7    # "spayUri":Landroid/net/Uri;
    .end local v8    # "value1":Ljava/lang/String;
    .end local v9    # "value2":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 228
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private static mSupportSpay(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const/4 v4, 0x0

    .line 234
    .local v4, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 235
    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    .line 234
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 236
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 237
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "com.samsung.android.spay.quickgesture"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 238
    .local v4, "ret":Z
    const-string/jumbo v5, "FingerSensorGestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Samsung Pay supports finger gesture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "ret":Z
    :goto_0
    return v4

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "FingerSensorGestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 240
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "FingerSensorGestureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 98
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 99
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 100
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->createFingerGestureView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 109
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->createFingerGestureView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    .line 79
    const v0, 0x7f080077

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->addPreferencesFromResource(I)V

    .line 80
    const-string/jumbo v0, "open_samsung_pay"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    const-string/jumbo v0, "delete"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->removePreference(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSupportSpay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "open_samsung_pay"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->removePreference(Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.spay.quickgesture"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_gesture_quick"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_gesture_spay"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 75
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 180
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 174
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FingerSensorGesture"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 171
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 192
    .local v0, "value":Z
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "fingerprint_gesture_spay"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0270

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 197
    :cond_0
    return v3

    :cond_1
    move v1, v3

    .line 193
    goto :goto_0

    :cond_2
    move v2, v3

    .line 195
    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 142
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "fingerprint_gesture_quick"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 149
    .local v0, "fingerSensorGestureCheck":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 154
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->isSamsungPayGestureEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "fingerprint_gesture_spay"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 156
    .local v1, "fingerSensorGestureSpayCheck":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSamsungPay:Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 158
    .end local v1    # "fingerSensorGestureSpayCheck":Ljava/lang/Boolean;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mSupportSpay(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 162
    const-string/jumbo v4, "fingerprint_gesture_quick"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 164
    const-string/jumbo v4, "fingerprint_gesture_spay"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mFingerSensorGestureSpayObserver:Landroid/database/ContentObserver;

    .line 163
    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "FingerSensorGesture"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 140
    return-void

    .end local v0    # "fingerSensorGestureCheck":Ljava/lang/Boolean;
    :cond_5
    move v2, v4

    .line 148
    goto/16 :goto_0

    .restart local v0    # "fingerSensorGestureCheck":Ljava/lang/Boolean;
    :cond_6
    move v2, v4

    .line 154
    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f026f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 204
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 205
    .local v0, "value":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/FingerSensorGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_gesture_quick"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    return-void

    .line 203
    .end local v0    # "value":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_1
.end method
