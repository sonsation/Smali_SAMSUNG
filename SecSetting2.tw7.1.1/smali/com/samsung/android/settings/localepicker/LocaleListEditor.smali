.class public Lcom/samsung/android/settings/localepicker/LocaleListEditor;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LocaleListEditor.java"

# interfaces
.implements Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.implements Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;,
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;,
        Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;
    }
.end annotation


# instance fields
.field private final LANGUAGE_BASIC_MODE:I

.field private final LANGUAGE_EDIT_MODE:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFirstPreDraw:Z

.field private mFooterView:Landroid/view/View;

.field private mIsEnabledShowBtnBg:Z

.field private mIsShowHardKey:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mRemoveMode:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mScreenType:I

.field private mShowingRemoveDialog:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->callAddLanguagesSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->initActionBarBtn(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0
    .param p1, "removeMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFirstPreDraw:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    .line 93
    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    .line 95
    iput v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->LANGUAGE_BASIC_MODE:I

    .line 96
    iput v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->LANGUAGE_EDIT_MODE:I

    .line 97
    iput v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    .line 561
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 569
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 616
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 65
    return-void
.end method

.method private callAddLanguagesSettings()V
    .locals 4

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 273
    invoke-static {v1, p0, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    .line 275
    .local v0, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 277
    const/16 v2, 0x1001

    .line 275
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    .line 275
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 279
    const-string/jumbo v2, "localeListEditor"

    .line 275
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 271
    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 502
    const v0, 0x7f110544

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    .line 503
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 508
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 509
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    .line 510
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    .line 512
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 500
    return-void
.end method

.method private static getUserLocaleList(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 492
    .local v2, "localeList":Landroid/os/LocaleList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 493
    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 494
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    return-object v3
.end method

.method private initActionBarBtn(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    .line 166
    const/4 v9, 0x1

    if-ne p1, v9, :cond_8

    .line 167
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 168
    .local v6, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v6, :cond_0

    .line 169
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/view/Menu;->removeItem(I)V

    .line 171
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 172
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 175
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    if-eqz v9, :cond_4

    .line 176
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 179
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    .line 180
    const/4 v9, -0x1

    const/4 v10, -0x2

    .line 179
    invoke-direct {v4, v9, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 181
    .local v4, "lp":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 182
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0400a4

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "custom":Landroid/view/View;
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v9, v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 184
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, "customView":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 190
    .local v7, "toolbar":Landroid/widget/Toolbar;
    if-eqz v7, :cond_2

    .line 191
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 193
    :cond_2
    const v9, 0x7f11023a

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 194
    .local v2, "headerBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 195
    const v9, 0x7f02010e

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 199
    :goto_0
    const v9, 0x7f11023b

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 201
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    new-instance v10, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v9, 0x7f11023c

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    .line 212
    iget-boolean v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    if-eqz v9, :cond_3

    .line 213
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    const v10, 0x7f0b0511

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    .line 215
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    new-instance v10, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-boolean v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    if-eqz v9, :cond_4

    .line 225
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mCancelButton:Landroid/widget/Button;

    const v10, 0x7f020650

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 226
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mSaveButton:Landroid/widget/Button;

    const v10, 0x7f020650

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 231
    .end local v0    # "custom":Landroid/view/View;
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "lp":Landroid/app/ActionBar$LayoutParams;
    .end local v7    # "toolbar":Landroid/widget/Toolbar;
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 233
    .local v8, "window":Landroid/view/Window;
    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 234
    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0265

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 235
    :goto_1
    invoke-virtual {v8, v9}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 163
    .end local v6    # "menuItemRemove":Landroid/view/MenuItem;
    .end local v8    # "window":Landroid/view/Window;
    :cond_5
    :goto_2
    return-void

    .line 197
    .restart local v0    # "custom":Landroid/view/View;
    .restart local v1    # "customView":Landroid/view/View;
    .restart local v2    # "headerBar":Landroid/widget/LinearLayout;
    .restart local v3    # "inflater":Landroid/view/LayoutInflater;
    .restart local v4    # "lp":Landroid/app/ActionBar$LayoutParams;
    .restart local v6    # "menuItemRemove":Landroid/view/MenuItem;
    .restart local v7    # "toolbar":Landroid/widget/Toolbar;
    :cond_6
    const v9, 0x7f020135

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 236
    .end local v0    # "custom":Landroid/view/View;
    .end local v1    # "customView":Landroid/view/View;
    .end local v2    # "headerBar":Landroid/widget/LinearLayout;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "lp":Landroid/app/ActionBar$LayoutParams;
    .end local v7    # "toolbar":Landroid/widget/Toolbar;
    .restart local v8    # "window":Landroid/view/Window;
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d026c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    goto :goto_1

    .line 239
    .end local v6    # "menuItemRemove":Landroid/view/MenuItem;
    .end local v8    # "window":Landroid/view/Window;
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    if-eqz v9, :cond_a

    .line 240
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v9}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 241
    .restart local v1    # "customView":Landroid/view/View;
    if-eqz v1, :cond_9

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar;

    .line 243
    .restart local v7    # "toolbar":Landroid/widget/Toolbar;
    if-eqz v7, :cond_9

    .line 244
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0128

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 248
    .end local v7    # "toolbar":Landroid/widget/Toolbar;
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 249
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 251
    .end local v1    # "customView":Landroid/view/View;
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    if-eqz v9, :cond_b

    .line 252
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 256
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v13, 0x7f0b0268

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    .line 257
    .local v5, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-nez v9, :cond_c

    .line 258
    const/4 v9, 0x2

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 260
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 262
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_5

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 264
    .restart local v8    # "window":Landroid/view/Window;
    const/high16 v9, 0x4000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 265
    const/high16 v9, -0x80000000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0265

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setStatusBarColor(I)V

    goto/16 :goto_2
.end method

.method private setRemoveMode(Z)V
    .locals 3
    .param p1, "removeMode"    # Z

    .prologue
    const/4 v2, 0x1

    .line 338
    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 340
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 343
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 352
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    .line 337
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showNotificationDialog(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 601
    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 604
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    const v1, 0x7f0b1159

    .line 604
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 606
    const v1, 0x7f0b056b

    .line 604
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 608
    new-instance v1, Lcom/samsung/android/settings/localepicker/LocaleListEditor$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$13;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 607
    const v2, 0x7f0b1864

    .line 604
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 612
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 598
    return-void
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 6

    .prologue
    const v5, 0x1040013

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 361
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    .line 364
    .local v0, "checkedCount":I
    if-nez v0, :cond_1

    .line 365
    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 366
    return-void

    :cond_0
    move v2, v3

    .line 365
    goto :goto_0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 371
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 372
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    const v3, 0x7f0b13d8

    .line 372
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 374
    const v3, 0x7f0b13d9

    .line 372
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 375
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 372
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 380
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 372
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 388
    return-void

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f130005

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "title":Ljava/lang/String;
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 394
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 396
    const v3, 0x7f0b13d7

    .line 394
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 397
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    const v4, 0x1040009

    .line 394
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 403
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$10;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 394
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 422
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$11;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 394
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 360
    return-void
.end method

.method private updateViewConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 532
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 533
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    .line 532
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    .line 534
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    .line 536
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 531
    return-void

    .line 533
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 542
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 547
    .local v0, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 548
    const v4, 0x7f0b1ac5

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 549
    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 551
    .local v1, "visible":Z
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 550
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 552
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 541
    .end local v1    # "visible":Z
    :cond_2
    return-void

    .line 549
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v4

    if-ge v4, v1, :cond_1

    :cond_4
    move v1, v3

    goto :goto_0

    .restart local v1    # "visible":Z
    :cond_5
    move v2, v3

    .line 551
    goto :goto_1
.end method


# virtual methods
.method public customOnKeyDown(ILandroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 471
    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    .line 472
    const/16 v1, 0x70

    if-ne p1, v1, :cond_2

    .line 474
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    .line 475
    .local v0, "checkedCount":I
    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 470
    .end local v0    # "checkedCount":I
    :cond_1
    return-void

    .line 473
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x158

    return v0
.end method

.method public onCheckedChange()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 557
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "feedsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v5, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    .line 115
    .local v2, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    .line 117
    .local v1, "isLDUModel":Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showNotificationDialog(Landroid/content/Context;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsShowHardKey:Z

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_button_background"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mIsEnabledShowBtnBg:Z

    .line 124
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 105
    return-void

    :cond_2
    move v3, v4

    .line 121
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 483
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 484
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 485
    iget v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->initActionBarBtn(I)V

    .line 482
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 129
    iput-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .local v2, "result":Landroid/view/View;
    move-object v3, v2

    .line 132
    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0402a4

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "myLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b18c1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 136
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    .line 138
    const v3, 0x7f0402a6

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "headerView":Landroid/view/View;
    const v3, 0x7f0402a5

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    .line 141
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 143
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setOnCheckedChangeListener(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V

    .line 160
    return-object v2
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 456
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 457
    .local v0, "customView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar;

    .line 459
    .local v1, "toolbar":Landroid/widget/Toolbar;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 464
    .end local v1    # "toolbar":Landroid/widget/Toolbar;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 465
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 467
    .end local v0    # "customView":Landroid/view/View;
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 454
    return-void
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1
    .param p1, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 527
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 334
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 317
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 324
    :goto_0
    return v3

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 322
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 444
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Language"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 443
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 434
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Language"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 433
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 304
    const-string/jumbo v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v0, :cond_0

    .line 306
    const-string/jumbo v0, "localeScreenType"

    iget v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    :cond_0
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    .line 302
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 286
    if-eqz p1, :cond_1

    .line 287
    const-string/jumbo v0, "localeRemoveMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 288
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "localeScreenType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mScreenType:I

    .line 291
    :cond_0
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 293
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 284
    :cond_2
    return-void
.end method
