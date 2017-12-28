.class public Lcom/android/launcher3/home/OverviewPanel;
.super Landroid/widget/LinearLayout;
.source "OverviewPanel.java"


# static fields
.field private static final IMPROVE_COLOR_PICKER_DENSITY_THRESHOLD:I = 0x140

.field private static final TAG:Ljava/lang/String; = "Launcher.OverviewPanel"


# instance fields
.field private final DRAWABLE_TOP:I

.field private final ICON_PRESS_ALPHA_VALUE:F

.field private mChildCount:I

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSettingsButton:Landroid/widget/TextView;

.field private mWallpapersAndThemesButton:Landroid/widget/TextView;

.field private mWidgetsButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/OverviewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/OverviewPanel;->DRAWABLE_TOP:I

    .line 55
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/launcher3/home/OverviewPanel;->ICON_PRESS_ALPHA_VALUE:F

    .line 232
    new-instance v0, Lcom/android/launcher3/home/OverviewPanel$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/OverviewPanel$6;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 70
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWidgetsButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/OverviewPanel;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWallpapersButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickWallpapersAndThemesButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/OverviewPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/OverviewPanel;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->onClickSettingsButton()V

    return-void
.end method

.method private changeColorForChildPannel(Landroid/widget/TextView;Z)V
    .locals 3
    .param p1, "childPannel"    # Landroid/widget/TextView;
    .param p2, "whiteBg"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 271
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 272
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 271
    invoke-static {v0, v1, p2}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 273
    return-void
.end method

.method private onClickSettingsButton()V
    .locals 7

    .prologue
    .line 216
    const-string v0, "Launcher.OverviewPanel"

    const-string v1, "onClickSettingsButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 218
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Settings"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 222
    return-void
.end method

.method private onClickWallpapersAndThemesButton()V
    .locals 7

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->startThemeStore(Landroid/content/Context;)V

    .line 226
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Wallpaper and theme"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 230
    return-void
.end method

.method private onClickWallpapersButton()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 199
    const-string v1, "Launcher.OverviewPanel"

    const-string v2, "onClickWallpapersButton"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.wallpapers.WallpaperPickerActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "chooser":Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v7, "pickWallpaper":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    const-string v1, "mode"

    const-string v2, "null"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Wallpaper and theme"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 209
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090197

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method private onClickWidgetsButton()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 186
    const-string v0, "Launcher.OverviewPanel"

    const-string v1, "onClickWidgetsButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f0900b1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 192
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "HOEO"

    const-string v3, "Widget"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 194
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090198

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    goto :goto_0
.end method

.method private setContentDescription()V
    .locals 5

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "buttonString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mChildCount:I

    if-ge v1, v2, :cond_1

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    return-void
.end method

.method private setEditTextBg()V
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v1

    .line 247
    .local v1, "isEnableBtnBg":Z
    if-eqz v1, :cond_0

    .line 248
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mChildCount:I

    if-ge v0, v2, :cond_0

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0200d8

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private updateButtonLayout(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "optionButton"    # Landroid/widget/TextView;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0048

    .line 288
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 289
    .local v1, "optionMenuHeight":I
    if-eqz p1, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 290
    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0046

    .line 293
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 292
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 294
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 295
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 182
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/OverviewPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 183
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 264
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/home/OverviewPanel;->mChildCount:I

    if-ge v0, v1, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForChildPannel(Landroid/widget/TextView;Z)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 277
    .local v1, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0047

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 279
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/OverviewPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget v2, p0, Lcom/android/launcher3/home/OverviewPanel;->mChildCount:I

    if-ge v0, v2, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/OverviewPanel;->updateButtonLayout(Landroid/widget/TextView;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 75
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0094

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, "drawableSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getChildCount()I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mChildCount:I

    .line 80
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 81
    .local v0, "currentDensity":I
    move v2, v0

    .line 82
    .local v2, "targetDensity":I
    const/16 v4, 0x140

    if-ge v0, v4, :cond_0

    .line 83
    int-to-float v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    const/high16 v5, 0x43a00000    # 320.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v2, v4

    .line 85
    :cond_0
    const v4, 0x7f1100e4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    .line 86
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c3

    .line 88
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 87
    invoke-static {v5, v6, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 86
    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 90
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/home/OverviewPanel$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/OverviewPanel$1;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWidgetsButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/home/OverviewPanel$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/OverviewPanel$2;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 116
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->checkThemeStoreState(Landroid/content/Context;)I

    move-result v3

    .line 117
    .local v3, "themeStoreState":I
    const v4, 0x7f1100e3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    .line 118
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c1

    .line 120
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 119
    invoke-static {v5, v6, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 118
    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 121
    if-eqz v3, :cond_1

    .line 122
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c2

    .line 125
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 124
    invoke-static {v5, v6, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 123
    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/home/OverviewPanel$3;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/OverviewPanel$3;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_0
    const v4, 0x7f1100e6

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/OverviewPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    .line 150
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/OverviewPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c0

    .line 152
    invoke-virtual {v6, v7, v2, v8}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 151
    invoke-static {v5, v6, v1, v1}, Lcom/android/launcher3/util/BitmapUtils;->getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 150
    invoke-virtual {v4, v8, v5, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    sget-object v5, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 155
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/launcher3/home/OverviewPanel;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mSettingsButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/home/OverviewPanel$5;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/OverviewPanel$5;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->setEditTextBg()V

    .line 166
    invoke-direct {p0}, Lcom/android/launcher3/home/OverviewPanel;->setContentDescription()V

    .line 168
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 169
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/OverviewPanel;->changeColorForBg(Z)V

    .line 171
    :cond_2
    return-void

    .line 139
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/home/OverviewPanel;->mWallpapersAndThemesButton:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/home/OverviewPanel$4;

    invoke-direct {v5, p0}, Lcom/android/launcher3/home/OverviewPanel$4;-><init>(Lcom/android/launcher3/home/OverviewPanel;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 175
    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/launcher3/home/OverviewPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->checkThemeStoreState(Landroid/content/Context;)I

    .line 178
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 179
    return-void
.end method
