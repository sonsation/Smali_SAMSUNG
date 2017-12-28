.class public Lcom/android/launcher3/home/HomeModeChangeActivity;
.super Landroid/app/Activity;
.source "HomeModeChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.android.launcher.action.CHANGE_HOMEONLYMODE"

.field public static final EXTRA_HOMEONLYEMODE:Ljava/lang/String; = "homeOnlyeMode"

.field public static final PERMISSION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/TextView;

.field private mAppsRadio:Landroid/widget/RadioButton;

.field private mEnabledHomeOnly:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHomeOnlyRadio:Landroid/widget/RadioButton;

.field private mNeedInit:Z

.field private mPreview:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    .line 213
    new-instance v0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$1;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setHomeScreenMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeModeChangeActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mSettingsActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private askConfirmation()V
    .locals 3

    .prologue
    const v2, 0x7f09004f

    const/4 v1, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const v0, 0x7f090051

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    .line 239
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0
.end method

.method private checkNeedInit()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    .line 149
    .local v1, "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v7, v0

    .line 150
    .local v7, "noSuchTable":Z
    :cond_0
    if-eqz v7, :cond_3

    .line 151
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    .line 166
    :cond_1
    :goto_1
    return-void

    .line 145
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v7    # "noSuchTable":Z
    :cond_2
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 155
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v7    # "noSuchTable":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 159
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initActionBar()V
    .locals 9

    .prologue
    const v8, 0x7f110072

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    .line 170
    .local v5, "mActionBar":Landroid/app/ActionBar;
    if-eqz v5, :cond_0

    .line 171
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 172
    const v6, 0x7f040024

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 173
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110073

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    .local v1, "cancleButton":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "buttonString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v6, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v6, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 184
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    const v6, 0x7f110071

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 186
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 189
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v4

    .line 190
    .local v4, "isEnableBtnBg":Z
    if-eqz v4, :cond_0

    .line 191
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 192
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020108

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "buttonString":Ljava/lang/String;
    .end local v1    # "cancleButton":Landroid/widget/TextView;
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    .end local v3    # "index":I
    .end local v4    # "isEnableBtnBg":Z
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 130
    const v0, 0x7f1100a2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f11009f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    .line 132
    const v0, 0x7f1100a1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    .line 133
    const v0, 0x7f1100a3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    .line 134
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 139
    :goto_0
    const v0, 0x7f11009e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f1100a0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private preformOnClick(Z)V
    .locals 4
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 246
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090155

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090154

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 8

    .prologue
    .line 295
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "isHomeOnlyMode":Z
    iget-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    const/4 v2, 0x1

    .line 301
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "set_boolean_setting"

    const-string v7, "pref_home_screen_mode"

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 307
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0901bd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f09010e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2

    const-string v4, "2"

    .line 307
    :goto_0
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    .line 312
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0901e1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v4, "2"

    .line 311
    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v3

    .line 316
    .local v3, "settingsActivity":Landroid/app/Activity;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 317
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity$5;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    .line 331
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "isHomeOnlyMode":Z
    .end local v3    # "settingsActivity":Landroid/app/Activity;
    :cond_1
    return-void

    .line 309
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "isHomeOnlyMode":Z
    :cond_2
    const-string v4, "1"

    goto :goto_0

    .line 312
    :cond_3
    const-string v4, "1"

    goto :goto_1
.end method

.method private showModeChangeDialog(IZ)V
    .locals 7
    .param p1, "msgId"    # I
    .param p2, "needNeutralButton"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x1040000

    .line 254
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f090050

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09001e

    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$2;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity$2;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    if-eqz p2, :cond_0

    .line 268
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 269
    const v2, 0x7f090037

    new-instance v3, Lcom/android/launcher3/home/HomeModeChangeActivity$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$3;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 279
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 280
    .local v0, "alert":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/launcher3/home/HomeModeChangeActivity$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$4;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 287
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    .line 288
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 292
    return-void

    .line 277
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 287
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    :cond_1
    const/16 v2, 0xf

    goto :goto_1
.end method

.method private updatePreviewAndHelpText(Z)V
    .locals 4
    .param p1, "isHomeOnly"    # Z

    .prologue
    const/4 v3, 0x0

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bd

    .line 203
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f090053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    :goto_1
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    .line 208
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 126
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 106
    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    goto :goto_0

    .line 112
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    goto :goto_0

    .line 115
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 118
    :sswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f110072 -> :sswitch_0
        0x7f110073 -> :sswitch_1
        0x7f11009e -> :sswitch_2
        0x7f1100a0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    sget-object v1, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setRequestedOrientation(I)V

    .line 79
    :goto_0
    const v1, 0x7f04002c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setContentView(I)V

    .line 80
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    .line 81
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initViews()V

    .line 82
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->checkNeedInit()V

    .line 83
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initActionBar()V

    .line 84
    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    .line 86
    const v1, 0x7f09004d

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setTitle(I)V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mSettingsActivity:Landroid/app/Activity;

    .line 93
    return-void

    .line 76
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    return-void
.end method
