.class public Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;
.super Landroid/preference/Preference;
.source "NavigationbarColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;,
        Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;
    }
.end annotation


# static fields
.field private static sSelectedColorIndex:I


# instance fields
.field private color_value:[I

.field private mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

.field public mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

.field private mContext:Landroid/content/Context;

.field private mGrid:Landroid/widget/GridView;

.field mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

.field public mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

.field private mUseTheme:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mUseTheme:Z

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mUseTheme:Z

    return p1
.end method

.method static synthetic -set1(I)I
    .locals 0

    sput p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->resetNavigationBarIconColor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;I)V
    .locals 0
    .param p1, "bgColor"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setNavigationBarPreview(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mUseTheme:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    .line 110
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    .line 117
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    .line 57
    const v0, 0x7f040191

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->setLayoutResource(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 54
    return-void
.end method

.method private getSelectedPosition()I
    .locals 6

    .prologue
    .line 101
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    add-int/lit8 v2, v3, -0x1

    .line 102
    .local v2, "selectedPos":I
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 103
    .local v1, "selectedColor":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 104
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    aget v3, v3, v0

    if-ne v3, v1, :cond_0

    .line 105
    move v2, v0

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return v2
.end method

.method private resetNavigationBarIconColor()V
    .locals 3

    .prologue
    .line 211
    const-string/jumbo v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 212
    .local v1, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 214
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private setNavigationBarPreview(I)V
    .locals 12
    .param p1, "bgColor"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 185
    const/4 v5, 0x3

    new-array v3, v5, [F

    .line 186
    .local v3, "pixelHSV":[F
    const-string/jumbo v5, "statusbar"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 188
    .local v2, "mStatusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 189
    aget v5, v3, v11

    float-to-double v6, v5

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_1

    aget v5, v3, v10

    float-to-double v6, v5

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_1

    .line 190
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0174

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 199
    .local v1, "iconColor":I
    :goto_0
    if-eqz v2, :cond_0

    .line 201
    :try_start_0
    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setNavigationBarIconColor(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/PhoneWindow;

    .line 207
    .local v4, "win":Lcom/android/internal/policy/PhoneWindow;
    invoke-virtual {v4, p1}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarInternalColor(I)V

    .line 182
    return-void

    .line 191
    .end local v1    # "iconColor":I
    .end local v4    # "win":Lcom/android/internal/policy/PhoneWindow;
    :cond_1
    aget v5, v3, v11

    float-to-double v6, v5

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_2

    aget v5, v3, v10

    float-to-double v6, v5

    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_2

    .line 192
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0175

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .restart local v1    # "iconColor":I
    goto :goto_0

    .line 193
    .end local v1    # "iconColor":I
    :cond_2
    aget v5, v3, v10

    float-to-double v6, v5

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_3

    .line 194
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0176

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .restart local v1    # "iconColor":I
    goto :goto_0

    .line 196
    .end local v1    # "iconColor":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0173

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .restart local v1    # "iconColor":I
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->sSelectedColorIndex:I

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;->notifyDataSetChanged()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-void
.end method


# virtual methods
.method public getRecentlyUsedColor()[I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "recentlyUseColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    return-object v6

    .line 173
    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "value":[Ljava/lang/String;
    array-length v4, v3

    new-array v2, v4, [I

    .line 175
    .local v2, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 176
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_2
    return-object v2
.end method

.method public getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;
    .locals 6

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getRecentlyUsedColor()[I

    move-result-object v1

    .line 127
    .local v1, "recent":[I
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_color"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, "current":I
    if-eqz v1, :cond_0

    .line 129
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    .end local v2    # "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;I[I)V

    .line 133
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/app/SemColorPickerDialog;->getColorPicker()Lcom/samsung/android/widget/SemColorPicker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorChangedListener:Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemColorPicker;->setOnColorChangedListener(Lcom/samsung/android/widget/SemColorPicker$OnColorChangedListener;)V

    .line 134
    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/SemColorPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 144
    return-object v2

    .line 131
    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    :cond_0
    new-instance v2, Lcom/samsung/android/app/SemColorPickerDialog;

    .end local v2    # "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mOnColorSetListener:Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/SemColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemColorPickerDialog$OnColorSetListener;)V

    .local v2, "semColorPickerDialog":Lcom/samsung/android/app/SemColorPickerDialog;
    goto :goto_0
.end method

.method public isDefaultBackgroundColor()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSelectedPosition()I

    move-result v0

    .line 324
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 325
    const/4 v1, 0x1

    return v1

    .line 327
    :cond_0
    return v1
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "currentTheme":Ljava/lang/String;
    const v3, 0x7f1104be

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 67
    .local v1, "themeSwitch":Landroid/widget/Switch;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 82
    :goto_0
    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;Landroid/content/Context;[I)V

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    .line 83
    const v3, 0x7f11041b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    .line 84
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mAdapter:Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$CustomGrid;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    .line 86
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/SemColorPickerDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/SemColorPickerDialog;->dismiss()V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    .line 90
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v3}, Lcom/samsung/android/app/SemColorPickerDialog;->show()V

    .line 63
    :cond_1
    return-void

    .line 68
    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "navigationbar_use_theme_default"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .line 70
    .local v2, "value":Z
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mUseTheme:Z

    .line 71
    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 72
    new-instance v3, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;)V

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setDefaultBackgroundColor()V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "navigationbar_color"

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->color_value:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->updateUI()V

    .line 317
    return-void
.end method

.method public setRecentlyUsedColor(I)V
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 148
    const-string/jumbo v2, ""

    .line 149
    .local v2, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "recentlyUseColor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "value":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x6

    if-ge v4, v5, :cond_2

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationbarColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "navigationbar_recently_used_color"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v0, v4, :cond_3

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 161
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
