.class public Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
.super Ljava/lang/Object;
.source "TabController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;
    }
.end annotation


# static fields
.field private static final PICKER_ITEM_IDS:[I

.field private static final TAG:Ljava/lang/String; = "Tab"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCurrentTabId:I

.field private final mListFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mOnTabSelectedItemListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

.field private final mTabBackgroundColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mTabHost:Landroid/widget/TabHost;

.field private final mTabIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabViewBackgroundResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mTabViewTextColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private final mTalkBack:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->PICKER_ITEM_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x110001
        0x10002
        0x10003
        0x10007
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mListFragments:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 72
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    .line 73
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabBackgroundColorResId:I

    .line 74
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewBackgroundResId:I

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;->access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewTextColorResId:I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setFocusable(Z)V

    .line 83
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;-><init>(Landroid/content/Context;Landroid/widget/TabHost;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTalkBack:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->initialize()V

    .line 86
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTalkBack:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->changeFocus(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mOnTabSelectedItemListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->scrollSelector()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;

    .prologue
    .line 37
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mCurrentTabId:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mCurrentTabId:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->findPosition(I)I

    move-result v0

    return v0
.end method

.method private addTabInternal(I)V
    .locals 7
    .param p1, "tabId"    # I

    .prologue
    const/4 v6, -0x1

    .line 115
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 117
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultListUtils;->getListTypeTextResId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 118
    .local v1, "tabSpec":Landroid/widget/TabHost$TabSpec;
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 119
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 121
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->findPosition(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 122
    .local v2, "tabView":Landroid/view/View;
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 138
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewBackgroundResId:I

    if-eq v4, v6, :cond_0

    .line 139
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewBackgroundResId:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 141
    :cond_0
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewTextColorResId:I

    if-eq v4, v6, :cond_1

    .line 142
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, "title":Landroid/widget/TextView;
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabViewTextColorResId:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    .end local v3    # "title":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private changeFocus(Z)V
    .locals 3
    .param p1, "focusable"    # Z

    .prologue
    .line 243
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 244
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 245
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return-void
.end method

.method private findPosition(I)I
    .locals 2
    .param p1, "tabId"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private removeAllTabs()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mListFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 157
    return-void
.end method

.method private resetCurrentTab(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mCurrentTab"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 286
    .local v0, "currentTabField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 287
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    .end local v0    # "currentTabField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v2, "Tab"

    const-string/jumbo v3, "resetCurrentTab() - NoSuchFieldException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Tab"

    const-string/jumbo v3, "resetCurrentTab() - IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Tab"

    const-string/jumbo v3, "resetCurrentTab() - IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scrollSelector()V
    .locals 6

    .prologue
    .line 254
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->horizontal_tab_scroll:I

    .line 255
    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 256
    .local v0, "scrollView":Landroid/widget/HorizontalScrollView;
    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    .line 260
    .local v2, "w":I
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 263
    .local v3, "x":I
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method private setTabSelectedInternal(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 182
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->resetCurrentTab(I)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->removeAllTabs()V

    .line 98
    const v2, 0x7fffffff

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->resetCurrentTab(I)V

    .line 100
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabBackgroundColorResId:I

    if-eq v2, v7, :cond_0

    .line 101
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabBackgroundColorResId:I

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setBackgroundResource(I)V

    .line 104
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->PICKER_ITEM_IDS:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 105
    .local v0, "mLibraryItemId":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "mLibraryItemId":I
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 109
    .local v1, "tabId":I
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->addTabInternal(I)V

    goto :goto_1

    .line 111
    .end local v1    # "tabId":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTalkBack:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    invoke-static {v2, v7}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;I)V

    .line 112
    return-void
.end method

.method public setFocusable(ZZ)V
    .locals 4
    .param p1, "focusable"    # Z
    .param p2, "requestFocus"    # Z

    .prologue
    .line 268
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    .line 272
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 273
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method public setOnTabSelectedItemChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mOnTabSelectedItemListener:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$OnTabSelectedItemChangedListener;

    .line 90
    return-void
.end method

.method public setPrimaryColor(I)V
    .locals 10
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 188
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 189
    .local v3, "res":Landroid/content/res/Resources;
    sget v8, Lcom/samsung/android/app/musiclibrary/R$color;->tab_unselected_text_color:I

    .line 190
    invoke-static {v3, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v8

    .line 189
    invoke-static {p1, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createColorSelector(II)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 192
    .local v6, "textSelector":Landroid/content/res/ColorStateList;
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    .line 193
    .local v5, "tabWidget":Landroid/widget/TabWidget;
    invoke-virtual {v5}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 194
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 195
    invoke-virtual {v5, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 196
    .local v4, "tabView":Landroid/view/View;
    const v8, 0x1020016

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 197
    .local v7, "title":Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 199
    sget v8, Lcom/samsung/android/app/musiclibrary/R$drawable;->tab_indicator_material:I

    invoke-virtual {v3, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 200
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 201
    invoke-static {v3, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->createRippleDrawable(Landroid/content/res/Resources;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "tabView":Landroid/view/View;
    .end local v7    # "title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public final setTabSelected(I)V
    .locals 2
    .param p1, "tabId"    # I

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->findPosition(I)I

    move-result v0

    .line 171
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->setTabSelectedInternal(I)V

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController;->mTalkBack:Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;->access$500(Lcom/samsung/android/app/musiclibrary/ui/picker/TabController$TabTalkBack;)V

    .line 176
    return-void
.end method
