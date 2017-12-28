.class public Lcom/android/launcher3/home/ScreenGridPanel;
.super Landroid/widget/LinearLayout;
.source "ScreenGridPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenGridPanel"

.field private static mSpanDescriptionFormat:Ljava/lang/String;


# instance fields
.field private mApplyView:Landroid/widget/TextView;

.field private mAppsCellX:I

.field private mAppsCellY:I

.field private mAppsGridButtonMap:[Ljava/lang/String;

.field private mCancelView:Landroid/widget/TextView;

.field private mCancleButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridBtnLayout:Landroid/widget/LinearLayout;

.field private mGridButtonClickListener:Landroid/view/View$OnClickListener;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHomeGridInfoMap:[Ljava/lang/String;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mScreenGridButtonMap:[Ljava/lang/String;

.field private mScreenGridExplainView:Landroid/widget/TextView;

.field private mScreenGridTopContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/ScreenGridPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    .line 270
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$1;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    .line 344
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$2;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    .line 371
    new-instance v0, Lcom/android/launcher3/home/ScreenGridPanel$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/ScreenGridPanel$3;-><init>(Lcom/android/launcher3/home/ScreenGridPanel;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    .line 75
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/ScreenGridPanel;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ScreenGridPanel;->getGridInfoIndex(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ScreenGridPanel;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ScreenGridPanel;)Lcom/android/launcher3/home/HomeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ScreenGridPanel;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/ScreenGridPanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/launcher3/home/ScreenGridPanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/ScreenGridPanel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/ScreenGridPanel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    return-void
.end method

.method private getButtonResId(Ljava/lang/String;)I
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 337
    const-string v1, "drawable/screen_grid_icon_"

    .line 338
    .local v1, "resName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getGridInfoIndex(II)I
    .locals 9
    .param p1, "gridX"    # I
    .param p2, "gridY"    # I

    .prologue
    const/4 v4, 0x0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "index":I
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    .line 165
    .local v1, "map":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 166
    .local v2, "x":I
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    .line 167
    .local v3, "y":I
    if-ne v2, p1, :cond_1

    if-ne v3, p2, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    move v0, v4

    .line 176
    .end local v0    # "index":I
    .end local v1    # "map":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_0
    :goto_1
    return v0

    .line 173
    .restart local v0    # "index":I
    .restart local v1    # "map":Ljava/lang/String;
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v1    # "map":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_2
    move v0, v4

    .line 176
    goto :goto_1
.end method

.method private setSpanDescription(Z)V
    .locals 6
    .param p1, "setSelected"    # Z

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 387
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x7f0900b4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "selected":Ljava/lang/String;
    const v4, 0x7f09007e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "notSelected":Ljava/lang/String;
    if-eqz p1, :cond_0

    move-object v2, v3

    .line 391
    .local v2, "selectTTS":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0900cb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    .line 392
    return-void

    .end local v2    # "selectTTS":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 389
    goto :goto_0
.end method

.method private updateBtnForScreenGrid(Ljava/lang/String;)V
    .locals 12
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 316
    if-nez p1, :cond_1

    .line 334
    :cond_0
    return-void

    .line 318
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 321
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 322
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 323
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 325
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 326
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 327
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->setSpanDescription(Z)V

    .line 329
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    .line 330
    .local v1, "gridX":I
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v2

    .line 331
    .local v2, "gridY":I
    sget-object v6, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    .end local v1    # "gridX":I
    .end local v2    # "gridY":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateTextSize(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "button"    # Landroid/widget/TextView;

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 455
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 458
    :cond_0
    return-void
.end method


# virtual methods
.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/common/base/controller/ControllerBase;

    .prologue
    .line 180
    check-cast p1, Lcom/android/launcher3/home/HomeController;

    .end local p1    # "controller":Lcom/android/launcher3/common/base/controller/ControllerBase;
    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeController:Lcom/android/launcher3/home/HomeController;

    .line 181
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 5
    .param p1, "whiteBg"    # Z

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 409
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 410
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    .line 412
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    .line 411
    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    .line 413
    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 421
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 422
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    invoke-static {v2, v3, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 423
    return-void
.end method

.method public checkMatchGridOption(Ljava/lang/String;)Z
    .locals 4
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 217
    .local v1, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "currentGrid":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const/4 v2, 0x1

    .line 224
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkValidGridOption(Ljava/lang/String;)Z
    .locals 10
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "cellX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 204
    .local v1, "cellY":I
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v7, v6

    .line 205
    .local v4, "map":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 206
    .local v2, "homeX":I
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 208
    .local v3, "homeY":I
    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_1

    .line 209
    const/4 v5, 0x1

    .line 212
    .end local v2    # "homeX":I
    .end local v3    # "homeY":I
    .end local v4    # "map":Ljava/lang/String;
    :cond_0
    return v5

    .line 204
    .restart local v2    # "homeX":I
    .restart local v3    # "homeY":I
    .restart local v4    # "map":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getGriBtnLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getScreenGridTopConatiner()Landroid/view/View;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    return-object v0
.end method

.method initScreenGridTopContainer()V
    .locals 9

    .prologue
    const v8, 0x7f0200d8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 228
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    if-nez v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f110095

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    .line 233
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    .line 234
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f110099

    .line 235
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    .line 236
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900b2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellX:I

    .line 237
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget v5, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsCellY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 236
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-static {v1, v2, v6}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v2, 0x7f110098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    const v2, 0x7f110097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "buttonString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancleButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    sget-object v2, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 257
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 259
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 262
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/ScreenGridPanel;->changeColorForBg(Z)V

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridTopContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 268
    .end local v0    # "buttonString":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method onConfigurationChangedIfNeeded()V
    .locals 6

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 431
    .local v3, "marginLp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004e

    .line 432
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 433
    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/ScreenGridPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 437
    .local v2, "explainViewLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004d

    .line 438
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridExplainView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    .end local v2    # "explainViewLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f110096

    .line 443
    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 444
    .local v0, "buttonLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 445
    .local v1, "buttonLayoutLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a004f

    .line 446
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 450
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mCancelView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->updateTextSize(Landroid/widget/TextView;)V

    .line 451
    return-void
.end method

.method protected onFinishInflate()V
    .locals 21

    .prologue
    .line 80
    invoke-super/range {p0 .. p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 82
    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    .line 83
    .local v7, "grid":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "currentGrid":Ljava/lang/String;
    const v18, 0x7f0900cb

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/android/launcher3/home/ScreenGridPanel;->mSpanDescriptionFormat:Ljava/lang/String;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v9

    .line 88
    .local v9, "isEnableBtnBg":Z
    const v18, 0x7f0a0093

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 89
    .local v12, "padding":I
    const v18, 0x7f0a0190

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 91
    .local v11, "margin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 92
    const v18, 0x7f0c0005

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    .line 95
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 96
    const v18, 0x7f0c0002

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    .line 99
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 100
    const/high16 v18, 0x7f0c0000

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/ScreenGridPanel;->mAppsGridButtonMap:[Ljava/lang/String;

    .line 103
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_8

    .line 104
    const v18, 0x7f1100ee

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ScreenGridPanel;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .line 106
    .local v16, "screenGridButtonCount":I
    const v18, 0x7f0a0192

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 107
    .local v17, "screenGridButtonWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 108
    sget v18, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v19, 0x9c5

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 109
    const v18, 0x7f0a0193

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 115
    :cond_3
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v8, v0, :cond_8

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mScreenGridButtonMap:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v4, v18, v8

    .line 117
    .local v4, "buttonName":Ljava/lang/String;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 118
    .local v15, "screenGridButton":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/ScreenGridPanel;->getButtonResId(Ljava/lang/String;)I

    move-result v14

    .line 120
    .local v14, "resId":I
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 121
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v15, v0, v14, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 122
    const v18, 0x7f0f001a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    sget-object v18, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 125
    const v18, 0x7f020072

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    if-eqz v9, :cond_4

    .line 128
    const v18, 0x7f0200d8

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    invoke-virtual {v15, v12, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ScreenGridPanel;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "currentLanguage":Ljava/lang/String;
    const-string v18, "ar"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string v18, "fa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 136
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    .line 138
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v19

    .line 137
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "arabicButtonName":Ljava/lang/String;
    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .end local v3    # "arabicButtonName":Ljava/lang/String;
    :goto_2
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 144
    const v18, 0x7f0a0092

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 145
    const/16 v18, 0x31

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 149
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v10, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v11, v0, v11, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 153
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 111
    .end local v4    # "buttonName":Ljava/lang/String;
    .end local v6    # "currentLanguage":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "llp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "resId":I
    .end local v15    # "screenGridButton":Landroid/widget/TextView;
    :cond_6
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_0

    .line 141
    .restart local v4    # "buttonName":Ljava/lang/String;
    .restart local v6    # "currentLanguage":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v14    # "resId":I
    .restart local v15    # "screenGridButton":Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 158
    .end local v4    # "buttonName":Ljava/lang/String;
    .end local v6    # "currentLanguage":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v14    # "resId":I
    .end local v15    # "screenGridButton":Landroid/widget/TextView;
    .end local v16    # "screenGridButtonCount":I
    .end local v17    # "screenGridButtonWidth":I
    :cond_8
    return-void
.end method

.method public setScreenGridProxy(Ljava/lang/String;)V
    .locals 11
    .param p1, "gridOption"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "child":I
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    .local v0, "cellX":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 187
    .local v1, "cellY":I
    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mHomeGridInfoMap:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 188
    .local v5, "map":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 189
    .local v3, "homeX":I
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 191
    .local v4, "homeY":I
    if-ne v0, v3, :cond_1

    if-ne v1, v4, :cond_1

    .line 192
    iget-object v6, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 198
    .end local v3    # "homeX":I
    .end local v4    # "homeY":I
    .end local v5    # "map":Ljava/lang/String;
    :cond_0
    return-void

    .line 195
    .restart local v3    # "homeX":I
    .restart local v4    # "homeY":I
    .restart local v5    # "map":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 187
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method updateButtonStatus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 397
    .local v0, "cellXY":[I
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "currentGrid":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/ScreenGridPanel;->updateBtnForScreenGrid(Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 403
    iget-object v2, p0, Lcom/android/launcher3/home/ScreenGridPanel;->mApplyView:Landroid/widget/TextView;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 404
    return-void
.end method
