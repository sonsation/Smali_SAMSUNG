.class public Lcom/android/launcher3/allapps/view/AppsSearchBar;
.super Landroid/widget/LinearLayout;
.source "AppsSearchBar.java"

# interfaces
.implements Lcom/android/launcher3/allapps/view/AppsSearchWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    }
.end annotation


# static fields
.field private static final EXTRA_MODE_KEY:Ljava/lang/String; = "launch_mode"

.field private static final EXTRA_MODE_TEXT_INPUT:Ljava/lang/String; = "text_input"

.field private static final EXTRA_MODE_VOICE_INPUT:Ljava/lang/String; = "voice_input"

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field public static final TAG:Ljava/lang/String; = "AppsSearchBar"

.field private static sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsScreenIDForSALog:Ljava/lang/String;

.field private mDivider:Landroid/view/View;

.field private mMagIcon:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSearchBarContainerView:Landroid/view/View;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSearchVoiceButton:Landroid/widget/ImageView;

.field private mSearchbarWrapper:Landroid/widget/LinearLayout;

.field mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private mWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e003f

    const v4, 0x7f0e003e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    sput-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    .line 103
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v2

    .line 104
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    .line 105
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    .line 106
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e002f

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    .line 107
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e0031

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    .line 109
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v3

    .line 110
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    .line 111
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    .line 112
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0030

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    .line 113
    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0032

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 350
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 363
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 394
    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    .line 128
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/view/AppsSearchBar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/allapps/view/AppsSearchBar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method private setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 237
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    return-void
.end method

.method private setupAppsOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 268
    const v9, 0x7f110120

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 269
    .local v6, "viewType":Landroid/view/MenuItem;
    const v9, 0x7f110124

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 270
    .local v1, "contactUs":Landroid/view/MenuItem;
    const v9, 0x7f110121

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 271
    .local v5, "tideUpPages":Landroid/view/MenuItem;
    const v9, 0x7f110125

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 272
    .local v4, "search":Landroid/view/MenuItem;
    const v9, 0x7f110126

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 273
    .local v0, "clearhistory":Landroid/view/MenuItem;
    const v9, 0x7f110122

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 274
    .local v3, "homeSettings":Landroid/view/MenuItem;
    const v9, 0x7f110123

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 276
    .local v2, "galaxyEssentials":Landroid/view/MenuItem;
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 279
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 282
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 287
    :goto_0
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v9

    if-nez v9, :cond_0

    move v7, v8

    :cond_0
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v7

    sget-object v9, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v7, v9, :cond_1

    .line 291
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 293
    :cond_1
    return v8

    .line 284
    :cond_2
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 12
    .param p1, "whiteBg"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 202
    if-eqz p1, :cond_1

    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 204
    .local v6, "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 205
    .local v5, "iconColor":I
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-direct {v4, v5, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 207
    .local v4, "filter":Landroid/graphics/ColorFilter;
    iget-boolean v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    if-ne v8, p1, :cond_2

    .line 208
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 209
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->invalidate()V

    .line 211
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 213
    .local v7, "textColor":I
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 214
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 234
    .end local v7    # "textColor":I
    :cond_0
    :goto_1
    return-void

    .line 202
    .end local v4    # "filter":Landroid/graphics/ColorFilter;
    .end local v5    # "iconColor":I
    .end local v6    # "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :cond_1
    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v6, v8, v10

    goto :goto_0

    .line 220
    .restart local v4    # "filter":Landroid/graphics/ColorFilter;
    .restart local v5    # "iconColor":I
    .restart local v6    # "style":Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v9, v8}, Landroid/view/View;->setRotation(F)V

    .line 222
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 223
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 226
    .local v0, "bgColor":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 227
    .local v1, "bgColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 230
    .local v2, "dividerColor":I
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v2, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 231
    .local v3, "dividerColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 233
    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    goto :goto_1

    .line 220
    .end local v0    # "bgColor":I
    .end local v1    # "bgColorFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "dividerColor":I
    .end local v3    # "dividerColorFilter":Landroid/graphics/ColorFilter;
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    .prologue
    .line 422
    return-object p0
.end method

.method public getSearchBarContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 436
    :cond_0
    return-void
.end method

.method public launchSfinder()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.galaxyfinder"

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    :goto_0
    return v6

    .line 335
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 338
    const-string v1, "launch_mode"

    const-string v2, "text_input"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 347
    const/4 v6, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "AppsSearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start S Finder.  intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 455
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 456
    .local v4, "top_margin":I
    invoke-virtual {v0, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 458
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 460
    .local v2, "paddingStart":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 461
    .local v3, "paddingTop":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 462
    .local v1, "paddingBottom":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v5, v2, v3, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 464
    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingStart":I
    .end local v3    # "paddingTop":I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const v12, 0x7f1100c3

    const v11, 0x7f110059

    const/4 v10, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 132
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 133
    const v5, 0x7f110054

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    .line 134
    const v5, 0x7f110055

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    .line 135
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 136
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setBackgroundColor(I)V

    .line 138
    const v5, 0x7f1100f7

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    .line 139
    const v5, 0x7f110056

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 140
    .local v4, "voiceButtionContainer":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->hasVoiceSearch()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setInputType(I)V

    .line 143
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    const v5, 0x7f110057

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    .line 148
    const v5, 0x7f110053

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "com.samsung.android.app.galaxyfinder"

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 151
    const v5, 0x7f110058

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    .line 152
    const v5, 0x7f1100c2

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    .line 153
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p0, v12}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 156
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 172
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    .local v1, "resource":Landroid/content/res/Resources;
    const-string v5, "android:id/search_src_text"

    invoke-virtual {v1, v5, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 174
    .local v2, "searchEdit":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchEditText:Landroid/widget/EditText;

    .line 175
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 176
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchEditText:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 178
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-nez v5, :cond_2

    .line 179
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->semSetDirectPenInputEnabled(Z)V

    .line 180
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v7}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 183
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "android:id/search_mag_icon"

    invoke-virtual {v5, v7, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 194
    .local v3, "searchMagId":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    .line 197
    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->changeColorAndBackground(Z)V

    .line 198
    return-void

    .end local v1    # "resource":Landroid/content/res/Resources;
    .end local v2    # "searchEdit":I
    .end local v3    # "searchMagId":I
    :cond_3
    move v5, v7

    .line 140
    goto/16 :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a0105

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 161
    .local v0, "paddingRight":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v5, v6, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 162
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    .line 163
    invoke-virtual {p0, v12}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    .line 164
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 167
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 418
    return-void
.end method

.method public setController(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/launcher3/allapps/controller/AppsController;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    .line 428
    return-void
.end method

.method public showPopupMenu()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppsLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 250
    :cond_2
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    const v3, 0x800005

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setupAppsOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 263
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->hidePopupMenu()V

    .line 441
    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1
    .param p1, "appsAnim"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 450
    return-void
.end method
