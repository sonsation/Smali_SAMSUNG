.class public Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "AppsPickerContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
.implements Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddButtonContainer:Landroid/view/View;

.field private mAddButtonText:Landroid/widget/TextView;

.field private mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

.field private mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

.field private mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPickerMode:I

.field private mQueryKey:Ljava/lang/String;

.field private mRestoredHiddenItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field private mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

.field private mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSelectedCount:I

.field private mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 106
    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    .line 109
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    .line 110
    invoke-static {p1}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getQueryKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    .line 111
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/view/AppsPickerContentView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkHiddenItem()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 227
    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-ne v3, v1, :cond_2

    .line 228
    .local v1, "checkAppHiddenStatus":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 229
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 234
    .local v2, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    if-ltz v4, :cond_1

    .line 235
    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 236
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 227
    .end local v0    # "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .end local v1    # "checkAppHiddenStatus":Z
    .end local v2    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 241
    .restart local v0    # "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .restart local v1    # "checkAppHiddenStatus":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->restoreHiddenItems()V

    .line 243
    .end local v0    # "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    :cond_4
    return-void
.end method

.method private debugAppsList()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 484
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumFilteredApps()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumAppRows()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppRows()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 487
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 489
    .local v0, "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - numApps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sectionBreakItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstAppItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    .end local v0    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    :cond_0
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 495
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFastScrollerSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 497
    .local v0, "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fastScrollToItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchFraction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 500
    .end local v0    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    :cond_2
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getFastScrollerSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_3
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterItems()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v2

    if-lez v2, :cond_5

    .line 505
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 506
    .local v1, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v5, " - [%s] viewType=%d, appIndex=%d, position=%d, sectionName=%s, sectionAppIndex=%d, rowIndex=%d, rowAppIndex=%d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 507
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 506
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 503
    .end local v1    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_2

    .line 510
    :cond_5
    return-void
.end method

.method private getBackgroundColorValue(Z)I
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 555
    if-eqz p1, :cond_0

    const v1, 0x7f0e0005

    .line 556
    .local v1, "colorId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 557
    .local v0, "color":I
    return v0

    .line 555
    .end local v0    # "color":I
    .end local v1    # "colorId":I
    :cond_0
    const v1, 0x7f0e0006

    goto :goto_0
.end method

.method private restoreHiddenItems()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 251
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 252
    .local v1, "isHidden":Z
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_3
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v1    # "isHidden":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->clearRestoredHiddenItems()V

    goto :goto_0
.end method

.method private setSelectionCount()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsToShow()I

    move-result v0

    .line 464
    .local v0, "totalOfApps":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 465
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 472
    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-nez v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :goto_1
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 193
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    .line 195
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v1

    .line 197
    .local v1, "isWhiteBg":Z
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-nez v3, :cond_0

    .line 198
    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .line 199
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    .line 200
    .local v0, "allListView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    .line 203
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 208
    .end local v0    # "allListView":Landroid/widget/ListView;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-nez v3, :cond_1

    .line 209
    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .line 210
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForSearchApps()Landroid/widget/ListView;

    move-result-object v2

    .line 211
    .local v2, "searchListView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    .line 214
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 215
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 219
    .end local v2    # "searchListView":Landroid/widget/ListView;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    .line 220
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setScrollIndexer()V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->resetBouncedApp()V

    .line 224
    return-void
.end method

.method public bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .param p2, "apps"    # Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    if-eq v0, p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eq v0, p2, :cond_1

    .line 188
    iput-object p2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .line 190
    :cond_1
    return-void
.end method

.method public changeColorAndBackground()V
    .locals 14

    .prologue
    const v13, 0x7f0a01aa

    const/4 v12, 0x0

    .line 518
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v10}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v2

    .line 519
    .local v2, "isBgColor":Z
    invoke-direct {p0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getBackgroundColorValue(Z)I

    move-result v0

    .line 520
    .local v0, "BgColor":I
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v10, :cond_0

    .line 521
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v10, v0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setContentBgColor(IZ)V

    .line 523
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_1

    .line 524
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_button"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 528
    .local v4, "searchButtonId":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_voice_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 529
    .local v9, "voiceButtonId":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_close_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 531
    .local v6, "searchCloseId":I
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const v11, 0x7f110048

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    .line 532
    .local v7, "searchView":Landroid/widget/SearchView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 533
    .local v8, "voiceButton":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 534
    .local v3, "searchButton":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 536
    .local v5, "searchCloseButton":Landroid/widget/ImageView;
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 537
    .local v1, "filter":Landroid/graphics/ColorFilter;
    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_2

    .line 538
    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 539
    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 541
    :cond_2
    if-eqz v8, :cond_3

    .line 542
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 543
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 544
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 546
    :cond_3
    if-eqz v3, :cond_4

    .line 547
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 549
    :cond_4
    if-eqz v5, :cond_5

    .line 550
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 552
    :cond_5
    return-void
.end method

.method public clearRestoredHiddenItems()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 288
    :cond_0
    return-void
.end method

.method public clearSearchResult()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 418
    invoke-virtual {p0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->notifyAppsListChanged(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showAllListView()V

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 431
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 435
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 138
    .local v2, "unicodeChar":I
    if-lez v2, :cond_1

    .line 139
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 140
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 141
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 142
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 141
    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 143
    .local v0, "gotKey":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->focusSearchField()V

    .line 148
    .end local v0    # "gotKey":Z
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "unicodeChar":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 139
    .restart local v2    # "unicodeChar":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "outItemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "outItemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    .line 294
    .local v0, "appIconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 295
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v3, :cond_0

    .line 297
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 300
    :cond_1
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 301
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v0    # "appIconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    return-void
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    return v0
.end method

.method public getRestoredHiddenItems()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mRestoredHiddenItems:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initBounceAnimation()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->stop()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 586
    :cond_0
    return-void
.end method

.method public isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyAppsListChanged(Z)V
    .locals 3
    .param p1, "needCheckValidItems"    # Z

    .prologue
    .line 340
    sget-object v1, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v2, "notifyAppsListChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->resetMap()V

    .line 343
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setNumAppsPerRow()V

    .line 344
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    .line 346
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v1, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setScrollIndexer()V

    .line 354
    if-eqz p1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v1, :cond_2

    .line 357
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->getSearchText()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->onQueryTextChange(Ljava/lang/String;)Z

    .line 360
    .end local v0    # "query":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 361
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    .line 365
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 366
    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 389
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    .line 155
    new-instance v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    .line 163
    .local v0, "focusProxyListener":Landroid/view/View$OnFocusChangeListener;
    const v1, 0x7f11003b

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 164
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    const v1, 0x7f110038

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f110039

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 171
    :cond_0
    const v1, 0x7f11003a

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v1, 0x7f11003c

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    .line 180
    return-void
.end method

.method public onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    if-eqz p2, :cond_2

    .line 394
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 395
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 400
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    .local v0, "foundApps":I
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const/4 v0, -0x1

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setSearchResultText(I)V

    .line 405
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showSearchListView()V

    .line 408
    .end local v0    # "foundApps":I
    :cond_2
    return-void
.end method

.method public onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 319
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 320
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 129
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->onVoiceSearch(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 562
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onWindowFocusChanged(Z)V

    .line 563
    if-eqz p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 565
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    instance-of v1, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$3;

    invoke-direct {v2, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$3;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 579
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->reset()V

    .line 329
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 330
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 331
    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .line 332
    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->resetMap()V

    .line 334
    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    return-void
.end method

.method public resetBouncedApp()V
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->resetBouncedAppInfo()V

    .line 615
    :cond_0
    return-void
.end method

.method public resetSearchText()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 621
    :cond_0
    return-void
.end method

.method public setAppsPickerViewTop(Z)V
    .locals 1
    .param p1, "appsPickerViewTop"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setAppsPickerViewTop(Z)V

    .line 124
    :cond_0
    return-void
.end method

.method public setBouncedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setBouncedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 609
    :cond_0
    return-void
.end method

.method public setParentMode(Z)V
    .locals 1
    .param p1, "home"    # Z

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setParentMode(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public setPickerMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 269
    iput p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    .line 270
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setScrollIndexer()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "appListForIndexer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "&"

    .line 441
    .local v5, "listHeaderIndexer":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    .line 442
    .local v1, "appsMapSize":I
    if-lez v1, :cond_1

    .line 443
    const-string v7, ""

    .line 444
    .local v7, "sectionName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 445
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v6

    .line 446
    .local v6, "rowItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    if-eqz v6, :cond_0

    .line 447
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v3, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 448
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 449
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v4, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 451
    .local v4, "lastSection":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 452
    move-object v7, v4

    .line 453
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "lastSection":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "i":I
    .end local v6    # "rowItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .end local v7    # "sectionName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v9, v0, v5}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setScrollIndexer(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 459
    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V
    .locals 3
    .param p1, "searchController"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    if-eqz v1, :cond_0

    .line 374
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected search bar controller to only be set once"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, p1

    .line 376
    check-cast v1, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    .line 377
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    .line 380
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, "searchBarView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setHasSearchBar()V

    .line 384
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 515
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "row"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 603
    :cond_0
    return-void
.end method

.method public startBounceAnimation()V
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    iget-object v0, v1, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mBouncedHiddenAppView:Landroid/view/View;

    .line 590
    .local v0, "view":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->initBounceAnimation()V

    .line 592
    new-instance v1, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    .line 593
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mBounceAnimation:Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;

    invoke-virtual {v1}, Lcom/android/launcher3/util/animation/SearchedAppBounceAnimation;->animate()V

    .line 597
    :cond_0
    return-void

    .line 589
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
