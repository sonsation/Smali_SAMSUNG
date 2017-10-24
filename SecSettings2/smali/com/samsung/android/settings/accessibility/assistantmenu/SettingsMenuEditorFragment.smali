.class public Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.super Landroid/app/Fragment;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;,
        Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues:[I

.field private static final synthetic -com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues:[I

.field public static assistantmenuSettingsPrefs:Ljava/lang/String;

.field public static keyLowerItemTotalCount:Ljava/lang/String;

.field public static keyMenuItemTotalCount:Ljava/lang/String;


# instance fields
.field private GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

.field private GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

.field private StatusBarHeight:I

.field public frag_Act:Landroid/app/Activity;

.field private lin_Layout:Landroid/widget/LinearLayout;

.field private mAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

.field private mControlBar:Landroid/widget/ImageView;

.field private final mControlbartouchListener:Landroid/view/View$OnTouchListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

.field private mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

.field private mGridViewItemListLower:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewItemListUpper:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGridViewLower:Landroid/widget/GridView;

.field private mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

.field private final mGridViewTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mGridViewUpper:Landroid/widget/GridView;

.field private mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

.field private mIconImgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIconStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTranslateAnimationEnd:Z

.field private mIsWidgetVisible:Z

.field private mIsdetectedUpper:Z

.field private mLowerDetectedItemId:I

.field private mNewLowerDetectedItemId:I

.field private mNewUpperDetectedItemId:I

.field private mNotPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreDetectedItemId:I

.field private mPrePositionX:F

.field private mPrePositionY:F

.field private mPrefsDefaltValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReset:Landroid/view/MenuItem;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollDirection:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

.field private mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

.field private final mSettingsMenuEditorHandler:Landroid/os/Handler;

.field private mTotalLowerItemCount:I

.field private mTotalUpperItemCount:I

.field mTouchSyncObj:Ljava/lang/Object;

.field private mTranslateAnimation:Landroid/view/animation/Animation;

.field mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

.field private mUpperDetectedItemId:I

.field private mWdigetItemBmpX:F

.field private mWdigetItemBmpY:F

.field private mWidgetImageView:Landroid/widget/ImageView;

.field private mWidgetItemBmp:Landroid/graphics/Bitmap;

.field private mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return v0
.end method

.method private static synthetic -getcom-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->values()[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->values()[Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_DOWN:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-com-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsScrollArea()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AfterTranslateAnimationEnd()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;I)V
    .locals 0
    .param p1, "gapY"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByGap(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;ZI)V
    .locals 0
    .param p1, "isInitialize"    # Z
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->FindNearItem()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 0
    .param p1, "direction"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GridViewScroll(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->UpdateWidget()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "menuItemTotalCount"

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "lowerItemTotalCount"

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "AM_SETTINGS_PREFS"

    sput-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 67
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    .line 75
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    .line 77
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 79
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    .line 81
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    .line 83
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 97
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 99
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 107
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 109
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 111
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 113
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 115
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 117
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 121
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 124
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 126
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    .line 128
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    .line 130
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 132
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 134
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    .line 136
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 138
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 140
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 142
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 144
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 148
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 151
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 153
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 155
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    .line 157
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    .line 159
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    .line 164
    iput v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    .line 172
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 174
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 186
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 190
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    .line 197
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    .line 413
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 495
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    .line 542
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 565
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateLowerGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 1401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private AfterTranslateAnimationEnd()V
    .locals 3

    .prologue
    .line 531
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[c] AfterTranslateAnimationEnd()+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    if-nez v0, :cond_0

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 536
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 530
    :cond_0
    return-void
.end method

.method private AssignDragItem()V
    .locals 5

    .prologue
    const v4, 0x7f110661

    const v3, 0x7f020383

    const/4 v2, -0x1

    .line 947
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v2, :cond_0

    .line 948
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 954
    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v2, :cond_1

    .line 955
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 961
    :cond_1
    iput v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 963
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 964
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 966
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 968
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    .line 945
    return-void
.end method

.method private ChangelayoutByGap(I)V
    .locals 12
    .param p1, "gapY"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const v8, 0x7f0a0411

    const v7, 0x7f0a0410

    .line 773
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    add-int v3, v4, p1

    .line 774
    .local v3, "x":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v0

    .line 776
    .local v0, "isPortrait":Z
    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 832
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 833
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 836
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 837
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    return-void

    .line 780
    :cond_1
    if-nez v0, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 783
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 784
    :cond_2
    if-ltz p1, :cond_c

    .line 785
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v1

    .line 786
    .local v1, "line":I
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ChangelayoutByGap() line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 788
    const/4 v2, 0x0

    .line 790
    .local v2, "maxHeight":I
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 791
    if-ne v1, v9, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 824
    :goto_1
    if-le v3, v2, :cond_0

    .line 825
    move v3, v2

    goto :goto_0

    .line 794
    :cond_3
    if-ne v1, v10, :cond_4

    .line 795
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 796
    const v5, 0x7f0a0413

    .line 795
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 797
    :cond_4
    if-ne v1, v11, :cond_5

    .line 798
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 799
    const v5, 0x7f0a0415

    .line 798
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 800
    :cond_5
    const/4 v4, 0x4

    if-ne v1, v4, :cond_6

    .line 801
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 802
    const v5, 0x7f0a0416

    .line 801
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 803
    :cond_6
    const/4 v4, 0x5

    if-ne v1, v4, :cond_7

    .line 804
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 805
    const v5, 0x7f0a0417

    .line 804
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 807
    :cond_7
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    const-string/jumbo v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 810
    :cond_8
    if-ne v1, v9, :cond_9

    .line 811
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 813
    :cond_9
    if-ne v1, v10, :cond_a

    .line 814
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 815
    const v5, 0x7f0a0412

    .line 814
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 816
    :cond_a
    if-ne v1, v11, :cond_b

    .line 817
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 818
    const v5, 0x7f0a0414

    .line 817
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    .line 820
    :cond_b
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    const-string/jumbo v5, "ChangelayoutByLine else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 828
    .end local v1    # "line":I
    .end local v2    # "maxHeight":I
    :cond_c
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    const-string/jumbo v5, "ChangelayoutByGap else"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private ChangelayoutByLine(ZI)V
    .locals 8
    .param p1, "isInitialize"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 842
    const/4 v1, 0x0

    .line 849
    .local v1, "x":I
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->getCount()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLine(I)I

    move-result v0

    .line 850
    .local v0, "line":I
    const-string/jumbo v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ChangelayoutByLine() line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 854
    if-ne v0, v5, :cond_1

    .line 855
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 856
    const v3, 0x7f0a0411

    .line 855
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 894
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 895
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 899
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0637

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 898
    sub-int/2addr v3, v4

    .line 900
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    .line 898
    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 902
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 898
    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 904
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 840
    return-void

    .line 857
    :cond_1
    if-ne v0, v6, :cond_2

    .line 858
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 859
    const v3, 0x7f0a0413

    .line 858
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 860
    :cond_2
    if-ne v0, v7, :cond_3

    .line 861
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 862
    const v3, 0x7f0a0415

    .line 861
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 863
    :cond_3
    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 864
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 865
    const v3, 0x7f0a0416

    .line 864
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 866
    :cond_4
    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 867
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 868
    const v3, 0x7f0a0417

    .line 867
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 870
    :cond_5
    const-string/jumbo v2, "SettingsMenuEditorFragment"

    const-string/jumbo v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return-void

    .line 874
    :cond_6
    if-ne v0, v5, :cond_7

    .line 875
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 876
    const v3, 0x7f0a0410

    .line 875
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    .line 877
    :cond_7
    if-ne v0, v6, :cond_8

    .line 878
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 879
    const v3, 0x7f0a0412

    .line 878
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto/16 :goto_0

    .line 880
    :cond_8
    if-ne v0, v7, :cond_9

    .line 881
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 882
    const v3, 0x7f0a0414

    .line 881
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 883
    if-ne p2, v5, :cond_0

    .line 884
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    goto/16 :goto_0

    .line 887
    :cond_9
    const-string/jumbo v2, "SettingsMenuEditorFragment"

    const-string/jumbo v3, "ChangelayoutByLine else"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    return-void
.end method

.method private CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I
    .locals 23
    .param p1, "gridview"    # Landroid/widget/GridView;
    .param p2, "layoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 1088
    const/4 v7, -0x1

    .line 1090
    .local v7, "itemIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getWidth()I

    move-result v5

    .line 1091
    .local v5, "gapMin":I
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 1094
    .local v15, "rectWidget":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getWidth()I

    move-result v21

    .line 1094
    add-int v20, v20, v21

    .line 1096
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->getHeight()I

    move-result v22

    add-int v21, v21, v22

    .line 1093
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1098
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1101
    .local v10, "rectItem":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_0

    .line 1102
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1103
    .local v8, "itemView":Landroid/view/View;
    if-nez v8, :cond_1

    .line 1156
    .end local v8    # "itemView":Landroid/view/View;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v18

    add-int v18, v18, v7

    return v18

    .line 1105
    .restart local v8    # "itemView":Landroid/view/View;
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    .line 1106
    .local v9, "loc":[I
    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1107
    const/16 v18, 0x0

    aget v13, v9, v18

    .line 1108
    .local v13, "rectItemX":I
    const/16 v18, 0x1

    aget v14, v9, v18

    .line 1120
    .local v14, "rectItemY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    add-int v18, v18, v13

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v19

    .line 1120
    add-int v19, v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v13, v14, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1123
    invoke-static {v15, v10}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1127
    const-string/jumbo v18, "SettingsMenuEditorFragment"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "FindNearItem()_intersects_ItemIndex: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 1130
    .local v16, "rectWidgetCX":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 1132
    .local v17, "rectWidgetCY":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    .line 1133
    .local v11, "rectItemCX":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    .line 1137
    .local v12, "rectItemCY":I
    sub-int v18, v16, v11

    .line 1138
    sub-int v19, v16, v11

    .line 1137
    mul-int v18, v18, v19

    .line 1138
    sub-int v19, v17, v12

    .line 1139
    sub-int v20, v17, v12

    .line 1138
    mul-int v19, v19, v20

    .line 1137
    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v4, v0

    .line 1143
    .local v4, "gap":I
    if-le v5, v4, :cond_2

    .line 1144
    move v5, v4

    .line 1145
    move v7, v6

    .line 1101
    .end local v4    # "gap":I
    .end local v11    # "rectItemCX":I
    .end local v12    # "rectItemCY":I
    .end local v16    # "rectWidgetCX":I
    .end local v17    # "rectWidgetCY":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method private FindNearItem()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1175
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 1176
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1178
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->IsLowerGridViewArea()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1180
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 1181
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v1, :cond_3

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1184
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1185
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1187
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-ne v0, v3, :cond_2

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1198
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1228
    :cond_0
    :goto_1
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1173
    :cond_1
    :goto_2
    return-void

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1193
    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    .line 1192
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1195
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1194
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_0

    .line 1200
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewUpperDetectedItemId:I

    if-ne v0, v3, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1203
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1205
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-eq v0, v3, :cond_4

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1208
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1207
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto :goto_1

    .line 1212
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1213
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1212
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1216
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1218
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1219
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 1221
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1222
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1221
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_1

    .line 1231
    :cond_6
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    if-ne v0, v3, :cond_1

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->CheckIntersects(Landroid/widget/GridView;Landroid/widget/LinearLayout$LayoutParams;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1234
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-eq v0, v3, :cond_9

    .line 1235
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v1, :cond_9

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1241
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    if-ne v0, v3, :cond_8

    .line 1243
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1244
    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1243
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1252
    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1280
    :cond_7
    :goto_4
    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    goto/16 :goto_2

    .line 1247
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1248
    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    .line 1247
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1250
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1249
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto :goto_3

    .line 1254
    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNewLowerDetectedItemId:I

    if-ne v0, v3, :cond_7

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1258
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    if-eq v0, v3, :cond_a

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1262
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1261
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    goto :goto_4

    .line 1266
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1267
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1266
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    .line 1268
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1271
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_4

    .line 1274
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1275
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1274
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ItemAnimationRun(Landroid/widget/GridView;II)V

    goto/16 :goto_4
.end method

.method private GetGridViewLine(I)I
    .locals 4
    .param p1, "gridViewItemCount"    # I

    .prologue
    .line 1365
    const/4 v0, -0x1

    .line 1367
    .local v0, "rowLine":I
    const-string/jumbo v1, "SettingsMenuEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetGridViewLine gridViewItemCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1369
    if-ltz p1, :cond_0

    .line 1370
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_1

    .line 1371
    const/4 v0, 0x1

    .line 1397
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_2

    .line 1373
    const/4 v0, 0x2

    goto :goto_0

    .line 1374
    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_3

    .line 1375
    const/4 v0, 0x3

    goto :goto_0

    .line 1376
    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x4

    if-gt p1, v1, :cond_4

    .line 1377
    const/4 v0, 0x4

    goto :goto_0

    .line 1378
    :cond_4
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x5

    if-gt p1, v1, :cond_5

    .line 1379
    const/4 v0, 0x5

    goto :goto_0

    .line 1381
    :cond_5
    const-string/jumbo v1, "SettingsMenuEditorFragment"

    const-string/jumbo v2, "GetGridViewLine [GetOrientationState is true] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1385
    :cond_6
    if-ltz p1, :cond_0

    .line 1386
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    if-gt p1, v1, :cond_7

    .line 1387
    const/4 v0, 0x1

    goto :goto_0

    .line 1388
    :cond_7
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_8

    .line 1389
    const/4 v0, 0x2

    goto :goto_0

    .line 1390
    :cond_8
    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    mul-int/lit8 v1, v1, 0x3

    if-gt p1, v1, :cond_9

    .line 1391
    const/4 v0, 0x3

    goto :goto_0

    .line 1393
    :cond_9
    const-string/jumbo v1, "SettingsMenuEditorFragment"

    const-string/jumbo v2, "GetGridViewLine [GetOrientationState is false] else"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetGridViewLowerHeight(I)I
    .locals 3
    .param p1, "gridViewUpperHeight"    # I

    .prologue
    .line 1287
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 1288
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0637

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1287
    sub-int/2addr v0, v1

    .line 1290
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    .line 1287
    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1292
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    .line 1287
    sub-int/2addr v0, v1

    return v0
.end method

.method private GetOrientationPortraite()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1298
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 1299
    return v1

    .line 1302
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private GetWindowSize()V
    .locals 5

    .prologue
    .line 1306
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1307
    .local v0, "displaySize":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1309
    iget v3, v0, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    .line 1310
    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayHeight:I

    .line 1312
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1313
    .local v1, "rectgle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1314
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1315
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    .line 1305
    return-void
.end method

.method private GridViewScroll(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    .locals 2
    .param p1, "direction"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .prologue
    .line 1320
    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-getcom-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$SCROLL_MOTIONSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1319
    :goto_0
    return-void

    .line 1322
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    .line 1325
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollByOffset(I)V

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private Init()V
    .locals 10

    .prologue
    const/4 v1, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 602
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->setHasOptionsMenu(Z)V

    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    .line 606
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 607
    const-string/jumbo v2, "window"

    .line 606
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 610
    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->assistantmenuSettingsPrefs:Ljava/lang/String;

    .line 609
    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    .line 612
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->AddOptionalMenuIfNeed(Landroid/content/Context;)Z

    .line 623
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconImgMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    .line 624
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mIconStringMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    .line 632
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    .line 633
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsUtil;->mNotPrefsDefaltValueWcursor:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    .line 636
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    .line 641
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 644
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalUpperItemCount:I

    if-ge v7, v0, :cond_4

    .line 645
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 646
    .local v8, "position":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assistant_menu_icon_key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 647
    .local v9, "value":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .line 649
    .local v6, "act":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    if-eqz v9, :cond_2

    .line 650
    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    .line 654
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_1

    .line 656
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_3

    .line 657
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_3

    .line 644
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_1

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 665
    .end local v6    # "act":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .end local v8    # "position":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTotalLowerItemCount:I

    if-ge v7, v0, :cond_8

    .line 666
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 668
    .restart local v8    # "position":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "assistant_menu_icon_key00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 669
    .restart local v9    # "value":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->None:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .line 670
    .restart local v6    # "act":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    if-eqz v9, :cond_6

    .line 671
    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    .line 677
    :goto_4
    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->Restart:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PowerOff:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    if-ne v6, v0, :cond_7

    .line 678
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_7

    .line 665
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 673
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v6

    goto :goto_4

    .line 681
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 685
    .end local v6    # "act":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .end local v8    # "position":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 687
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitUI()V

    .line 689
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 691
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 693
    const/16 v3, 0x7d3

    .line 694
    const/16 v4, 0x28

    .line 695
    const/4 v5, -0x3

    move v2, v1

    .line 691
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 697
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 601
    return-void
.end method

.method private InitUI()V
    .locals 4

    .prologue
    const v3, 0x7f040291

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f11065e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 293
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f11065f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f110660

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    const v1, 0x7f020379

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 303
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->MINUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .line 303
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 306
    new-instance v0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 307
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    sget-object v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->PLUS_IMAGE_MODE:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .line 306
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;-><init>(Landroid/app/Fragment;ILjava/util/ArrayList;Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$7;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    new-instance v1, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$8;-><init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 348
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlbartouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0
.end method

.method private IsLowerGridViewArea()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1160
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 1161
    .local v1, "loc":[I
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1162
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int v2, v3, v4

    .line 1163
    .local v2, "widgetBottomY":I
    aget v3, v1, v5

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1165
    .local v0, "gridViewLowerY":I
    if-le v2, v0, :cond_0

    .line 1166
    return v5

    .line 1168
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private IsScrollArea()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1333
    const/4 v4, 0x0

    .line 1334
    .local v4, "result":Z
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 1335
    .local v0, "loc":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1336
    .local v3, "rectWidget":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1337
    .local v2, "rectControlbar":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1338
    .local v1, "rectActionbar":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1340
    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v6, v6

    iget v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v7, v7

    .line 1341
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    .line 1340
    add-int/2addr v7, v8

    .line 1342
    iget v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1339
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1344
    aget v5, v0, v10

    aget v6, v0, v11

    iget v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    sub-int/2addr v6, v7

    .line 1345
    aget v7, v0, v10

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v0, v11

    .line 1346
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    .line 1345
    add-int/2addr v8, v9

    .line 1346
    iget v9, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    .line 1345
    sub-int/2addr v8, v9

    .line 1344
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1347
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IsScrollArea"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v0, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1348
    iget v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDisplayWidth:I

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6}, Landroid/app/ActionBar;->getHeight()I

    move-result v6

    invoke-virtual {v1, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1350
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1351
    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_UP:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 1352
    const/4 v4, 0x1

    .line 1360
    :goto_0
    const-string/jumbo v5, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IsScrollArea:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return v4

    .line 1353
    :cond_0
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1354
    sget-object v5, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;->SCROLL_DOWN:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mScrollDirection:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    .line 1355
    const/4 v4, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    const-string/jumbo v5, "SettingsMenuEditorFragment"

    const-string/jumbo v6, "IsScrollArea : else"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ItemAnimationRun(Landroid/widget/GridView;II)V
    .locals 10
    .param p1, "gridView"    # Landroid/widget/GridView;
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I

    .prologue
    const v9, 0x7f0a041a

    const v8, 0x7f0a0419

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 974
    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 975
    .local v0, "firstVisiblePostion":I
    if-eqz v0, :cond_0

    .line 976
    sub-int/2addr p2, v0

    .line 977
    sub-int/2addr p3, v0

    .line 979
    :cond_0
    const/4 v1, 0x0

    .line 983
    .local v1, "i":I
    if-le p3, p2, :cond_7

    .line 984
    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-gt v1, p3, :cond_e

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 987
    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_3

    .line 988
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 1014
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1017
    if-ne v1, p3, :cond_2

    .line 1018
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1019
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    :cond_1
    iput-boolean v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 1023
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 1024
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 1023
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1025
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    .line 1026
    const-wide/16 v4, 0x1f4

    .line 1025
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1028
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1029
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 984
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    :cond_3
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 993
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    .line 994
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 996
    const v5, 0x7f0a041b

    .line 994
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    .line 992
    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 1000
    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int v2, v1, v2

    if-eqz v2, :cond_5

    .line 1001
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1002
    const v4, 0x7f0a0418

    .line 1001
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_1

    .line 1005
    :cond_5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 1006
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1007
    const v4, 0x7f0a0418

    .line 1006
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    .line 1007
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    .line 1005
    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_1

    .line 1031
    :cond_6
    const-string/jumbo v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1035
    :cond_7
    move v1, p3

    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-gt v1, v2, :cond_e

    .line 1037
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1038
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_a

    .line 1039
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 1063
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1066
    add-int/lit8 v2, p2, -0x1

    if-ne v1, v2, :cond_9

    .line 1067
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1068
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_8
    iput-boolean v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    .line 1072
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    .line 1073
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateUpperGridViwAnimationListner:Landroid/view/animation/Animation$AnimationListener;

    .line 1072
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1074
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorHandler:Landroid/os/Handler;

    .line 1075
    const-wide/16 v4, 0x1f4

    .line 1074
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1077
    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1078
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1035
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1043
    :cond_a
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 1044
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x3

    int-to-float v3, v3

    .line 1045
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1047
    const v5, 0x7f0a041b

    .line 1045
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 1043
    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1050
    :cond_b
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_c

    .line 1051
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v6, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto :goto_4

    .line 1055
    :cond_c
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    .line 1056
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, -0x4

    int-to-float v3, v3

    .line 1057
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 1055
    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTranslateAnimation:Landroid/view/animation/Animation;

    goto/16 :goto_4

    .line 1080
    :cond_d
    const-string/jumbo v2, "SettingsMenuEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[c] gridview.getChildAt(i) null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 971
    :cond_e
    return-void
.end method

.method private MakeSettingItem(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .locals 5
    .param p1, "act"    # Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    .prologue
    .line 702
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconImgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 704
    .local v0, "img":I
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIconStringMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 706
    .local v1, "name":I
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, "strname":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-direct {v2, v0, p1, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;-><init>(ILcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;Ljava/lang/String;)V

    .line 709
    .local v2, "settingItem":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    return-object v2
.end method

.method private RemoveWidget()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 934
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 938
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 939
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 933
    :cond_0
    return-void
.end method

.method private ResetSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 732
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 733
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 736
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 737
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 738
    .local v0, "act":Ljava/lang/String;
    const-string/jumbo v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_1

    .line 736
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 742
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 746
    .end local v0    # "act":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 747
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mNotPrefsDefaltValue:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    .restart local v0    # "act":Ljava/lang/String;
    const-string/jumbo v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "PowerOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 749
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-lez v2, :cond_4

    .line 746
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 752
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->MakeSettingItem(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 755
    .end local v0    # "act":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 757
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 758
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 760
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 762
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetGridViewLowerHeight(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 764
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V

    .line 731
    return-void
.end method

.method private SaveSettings()V
    .locals 6

    .prologue
    .line 715
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 716
    .local v2, "upperItemSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "assistant_menu_icon_key"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyMenuItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 721
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 722
    .local v1, "lowerItemSize":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "assistant_menu_icon_key00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 726
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->keyLowerItemTotalCount:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    return-void
.end method

.method private ShowWidget()V
    .locals 3

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-nez v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 910
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 912
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 914
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    .line 916
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ShowWidget() mWidgetPointLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 917
    const-string/jumbo v2, ", mWidgetPointLayoutParams.y: "

    .line 916
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 917
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 916
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    return-void
.end method

.method private UpdateWidget()V
    .locals 3

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 925
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 926
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UpdateWidget() mWidgetLayoutParams.x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 929
    const-string/jumbo v2, ", mWidgetLayoutParams.y: "

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 929
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 928
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    return-void
.end method


# virtual methods
.method public GetIsWidgetVisible()Z
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    return v0
.end method

.method public GetLowerDetectedItemId()I
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    return v0
.end method

.method public GetTranslateAnimationEnd()Z
    .locals 1

    .prologue
    .line 1641
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsTranslateAnimationEnd:Z

    return v0
.end method

.method public GetUpperDetectedItemId()I
    .locals 1

    .prologue
    .line 1645
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    return v0
.end method

.method public InitResolution()V
    .locals 14

    .prologue
    const/16 v13, 0x400

    const/16 v12, 0x258

    const/4 v11, 0x4

    .line 1663
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1664
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1665
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1666
    .local v2, "heightPixels":I
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1667
    .local v5, "widthPixels":I
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1668
    .local v1, "densityDpi":I
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1669
    .local v0, "density":F
    iget v4, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 1670
    .local v4, "scaledDensity":F
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    .line 1671
    .local v6, "xdpi":F
    iget v7, v3, Landroid/util/DisplayMetrics;->ydpi:F

    .line 1693
    .local v7, "ydpi":F
    const-string/jumbo v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Screen W x H pixels: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string/jumbo v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Screen X x Y dpi: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const-string/jumbo v8, "Main onCreate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "density = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  scaledDensity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "  densityDpi = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    if-ne v5, v12, :cond_1

    if-ne v2, v13, :cond_1

    .line 1699
    :cond_0
    const/16 v8, 0xa0

    if-ne v1, v8, :cond_2

    .line 1700
    const-string/jumbo v8, "SettingsMenuEditorFragment"

    const-string/jumbo v9, "InitResolution changed for sw599-mdpi"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const/4 v8, 0x3

    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1702
    const/4 v8, 0x5

    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    .line 1661
    :goto_0
    return-void

    .line 1698
    :cond_1
    if-ne v5, v13, :cond_2

    if-eq v2, v12, :cond_0

    .line 1703
    :cond_2
    const/16 v8, 0x780

    if-ne v5, v8, :cond_3

    const/16 v8, 0x438

    if-ne v2, v8, :cond_3

    .line 1704
    iput v11, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1705
    const/16 v8, 0x8

    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_0

    .line 1708
    :cond_3
    const-string/jumbo v8, "SettingsMenuEditorFragment"

    const-string/jumbo v9, "InitResolution changed for other device"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iput v11, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1710
    const/4 v8, 0x6

    iput v8, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    goto :goto_0
.end method

.method public ItemClick(Landroid/view/View;ILcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "imageMode"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .prologue
    .line 1405
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1406
    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-getcom-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues()[I

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    monitor-exit v5

    .line 1403
    return-void

    .line 1408
    :pswitch_0
    :try_start_1
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    const-string/jumbo v6, "OnItemClickListener - mGridViewUpper"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 1414
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p2, :cond_0

    .line 1417
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v3

    .line 1418
    .local v3, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1419
    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1423
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1425
    .local v2, "item":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1430
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    .line 1431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mGridViewUpper.getFirstVisiblePosition() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1432
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v7

    .line 1431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1433
    const-string/jumbo v7, " mGridViewUpper.getLastVisiblePosition() = "

    .line 1431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1434
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v7

    .line 1431
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1429
    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetOrientationPortraite()Z

    move-result v1

    .line 1437
    .local v1, "isPortrait":Z
    if-eqz v1, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    .line 1440
    .local v0, "columnItemCount":I
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    rem-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 1441
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    if-ge v4, v0, :cond_3

    .line 1443
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v4

    if-nez v4, :cond_3

    .line 1444
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 1447
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 1453
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1454
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1405
    .end local v0    # "columnItemCount":I
    .end local v1    # "isPortrait":Z
    .end local v2    # "item":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .end local v3    # "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1438
    .restart local v1    # "isPortrait":Z
    .restart local v2    # "item":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .restart local v3    # "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    .restart local v0    # "columnItemCount":I
    goto :goto_1

    .line 1459
    .end local v0    # "columnItemCount":I
    .end local v1    # "isPortrait":Z
    .end local v2    # "item":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    .end local v3    # "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :pswitch_1
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    const-string/jumbo v6, "OnItemClickListener - mGridViewLower"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le p2, v4, :cond_5

    .line 1464
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[c] ItemClick: wrong position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    .line 1465
    return-void

    .line 1468
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1469
    .restart local v2    # "item":Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1475
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1479
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCount()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    if-eq v4, v6, :cond_6

    .line 1480
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 1483
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->SaveSettings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ItemLongClick(Landroid/view/View;ILcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "imageMode"    # Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;

    .prologue
    const/4 v8, 0x1

    .line 1494
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[c] ItemLongClick()+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1497
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1500
    :cond_0
    :goto_0
    const v4, 0x7f110661

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1501
    .local v0, "ItemView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 1502
    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1504
    .local v1, "copy":Landroid/graphics/Bitmap;
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 1506
    const/4 v2, 0x0

    .line 1507
    .local v2, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 1508
    .local v3, "loc":[I
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 1510
    invoke-static {}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-getcom-samsung-android-settings-accessibility-assistantmenu-SettingsMenuEditorFragment$IMAGE_MODESwitchesValues()[I

    move-result-object v4

    invoke-virtual {p3}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$IMAGE_MODE;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 1555
    .end local v2    # "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :goto_1
    if-eqz v2, :cond_1

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->PressHomeKey:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1556
    :cond_1
    if-eqz v2, :cond_3

    sget-object v4, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->SettingEnter:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1555
    if-eqz v4, :cond_3

    .line 1557
    :cond_2
    const-string/jumbo v4, "SettingsMenuEditorFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[c] mGridViewUpperItemLongClickListener() - home/setting:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPreDetectedItemId:I

    .line 1562
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ShowWidget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1565
    return v8

    .line 1498
    .end local v0    # "ItemView":Landroid/view/View;
    .end local v1    # "copy":Landroid/graphics/Bitmap;
    .end local v3    # "loc":[I
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1496
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1512
    .restart local v0    # "ItemView":Landroid/view/View;
    .restart local v1    # "copy":Landroid/graphics/Bitmap;
    .restart local v2    # "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    .restart local v3    # "loc":[I
    :pswitch_0
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    .line 1516
    .local v2, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1517
    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1518
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1519
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 1520
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1522
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 1524
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    .line 1523
    add-float/2addr v4, v6

    .line 1524
    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    .line 1523
    sub-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 1528
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Widgety"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1529
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1533
    .local v2, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;->getAct()Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;

    move-result-object v2

    .line 1537
    .local v2, "itemAct":Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantMenuUIAct$Act;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 1538
    iput p2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mLowerDetectedItemId:I

    .line 1539
    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mUpperDetectedItemId:I

    .line 1540
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsdetectedUpper:Z

    .line 1541
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDragItem:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewItem;

    .line 1543
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    const/4 v6, 0x0

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpX:F

    .line 1544
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 1545
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v6, v6

    .line 1544
    add-float/2addr v4, v6

    .line 1545
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1544
    add-float/2addr v4, v6

    .line 1546
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    .line 1544
    add-float/2addr v4, v6

    .line 1546
    iget v6, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->StatusBarHeight:I

    int-to-float v6, v6

    .line 1544
    sub-float/2addr v4, v6

    iput v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWdigetItemBmpY:F

    .line 1547
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public SetOnTouchActionDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionX:F

    .line 1570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mPrePositionY:F

    .line 1568
    return-void
.end method

.method public SetOnTouchActionUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1628
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1629
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 1630
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v2, "mGridViewUpperTouchListener_ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    .line 1633
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 1637
    const/4 v0, 0x0

    return v0

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v3, 0x7f0a040e

    const v2, 0x7f0a040d

    const/4 v1, 0x1

    .line 255
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mIsWidgetVisible:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->RemoveWidget()V

    .line 259
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AssignDragItem()V

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GetWindowSize()V

    .line 264
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ChangelayoutByLine(ZI)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 267
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_LANDSCAPE_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 254
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GRIDVIEW_PORTRAIT_COLUMN_ITEM_COUNT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 382
    const v0, 0x7f0b0433

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mReset:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 381
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    .line 220
    const v0, 0x7f040290

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->Init()V

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->InitResolution()V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->lin_Layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 230
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetImageView:Landroid/widget/ImageView;

    .line 231
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpper:Landroid/widget/GridView;

    .line 232
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLower:Landroid/widget/GridView;

    .line 233
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewUpperParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewLowerParam:Landroid/widget/LinearLayout$LayoutParams;

    .line 235
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mControlBar:Landroid/widget/ImageView;

    .line 236
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mSettingsMenuEditorActionBar:Landroid/app/ActionBar;

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 244
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListUpper:Ljava/util/ArrayList;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 249
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewItemListLower:Ljava/util/ArrayList;

    .line 227
    :cond_2
    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mWidgetItemBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 387
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 397
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 409
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 399
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->ResetSettings()V

    .line 400
    const/4 v0, 0x1

    return v0

    .line 397
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 368
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 365
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 354
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 355
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 356
    .local v0, "mEnable":Z
    :cond_0
    if-nez v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->frag_Act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterUpper:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 361
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->mGridViewAdapterLower:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 352
    return-void
.end method
