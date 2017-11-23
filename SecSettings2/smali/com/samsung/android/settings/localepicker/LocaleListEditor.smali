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
.field private mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFooterView:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mRemoveMode:Z

.field private mShowingRemoveDialog:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z
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

.method static synthetic -wrap2(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)V
    .locals 0
    .param p1, "removeMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 379
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$1;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 387
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$2;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 412
    new-instance v0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$3;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 55
    return-void
.end method

.method private callAddLanguagesSettings()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 132
    invoke-static {v1, p0, v2}, Lcom/android/internal/app/LocalePickerWithRegion;->createLanguagePicker(Landroid/content/Context;Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;Z)Lcom/android/internal/app/LocalePickerWithRegion;

    move-result-object v0

    .line 134
    .local v0, "selector":Lcom/android/internal/app/LocalePickerWithRegion;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 136
    const/16 v2, 0x1001

    .line 134
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getId()I

    move-result v2

    .line 134
    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 138
    const-string/jumbo v2, "localeListEditor"

    .line 134
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 131
    return-void
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 327
    const v0, 0x7f11046b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    .line 328
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 333
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f02034f

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    .line 325
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
    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    .line 317
    .local v2, "localeList":Landroid/os/LocaleList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 318
    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 319
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    return-object v3
.end method

.method private setRemoveMode(Z)V
    .locals 3
    .param p1, "removeMode"    # Z

    .prologue
    const/4 v2, 0x1

    .line 188
    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setRemoveMode(Z)V

    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 202
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateViewConfiguration()V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 187
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showRemoveLocaleWarningDialog()V
    .locals 6

    .prologue
    const v5, 0x1040013

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 211
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v0

    .line 214
    .local v0, "checkedCount":I
    if-nez v0, :cond_1

    .line 215
    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v4, :cond_0

    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 216
    return-void

    :cond_0
    move v2, v3

    .line 215
    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 221
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 222
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    const v3, 0x7f0b11f3

    .line 222
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 224
    const v3, 0x7f0b11f4

    .line 222
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 225
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$5;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 222
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 230
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$6;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 222
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f130005

    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "title":Ljava/lang/String;
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 244
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 246
    const v3, 0x7f0b11f2

    .line 244
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 247
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$7;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    const v4, 0x1040009

    .line 244
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 253
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$8;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 244
    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 271
    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$9;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    .line 244
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 210
    return-void
.end method

.method private updateViewConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 345
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 346
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a04c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    .line 345
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 344
    return-void

    .line 346
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

    .line 355
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    if-nez v4, :cond_0

    .line 356
    return-void

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    invoke-interface {v4, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 360
    .local v0, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 361
    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v4, :cond_3

    .line 362
    const v4, 0x7f0b189b

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 366
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_4

    .line 368
    .local v1, "visible":Z
    :cond_1
    :goto_1
    if-eqz v1, :cond_6

    .line 367
    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 369
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 354
    .end local v1    # "visible":Z
    :cond_2
    return-void

    .line 364
    :cond_3
    const v4, 0x7f0b01d7

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 366
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCheckedCount()I

    move-result v4

    if-ge v4, v1, :cond_1

    :cond_5
    move v1, v3

    goto :goto_1

    .restart local v1    # "visible":Z
    :cond_6
    move v2, v3

    .line 368
    goto :goto_2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x158

    return v0
.end method

.method public onCheckedChange()V
    .locals 1

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 374
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setHasOptionsMenu(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "feedsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    .line 91
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 306
    const v1, 0x7f0b01d7

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 307
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 308
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mMenu:Landroid/view/Menu;

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->updateVisibilityOfRemoveMenu()V

    .line 304
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

    .line 96
    iput-object v5, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .local v2, "result":Landroid/view/View;
    move-object v3, v2

    .line 99
    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f04026d

    invoke-virtual {p1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "myLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b1699

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 103
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V

    .line 105
    const v3, 0x7f04026f

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "headerView":Landroid/view/View;
    const v3, 0x7f04026e

    invoke-virtual {p1, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    .line 108
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 109
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mFooterView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 111
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor$4;-><init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setOnCheckedChangeListener(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V

    .line 128
    return-object v2
.end method

.method public onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1
    .param p1, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    .line 340
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 184
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 170
    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 175
    :goto_0
    return v1

    .line 173
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    goto :goto_0

    .line 178
    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 180
    return v1

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Language"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 283
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Language"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    const-string/jumbo v0, "localeRemoveMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->saveState(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 145
    if-eqz p1, :cond_0

    .line 146
    const-string/jumbo v0, "localeRemoveMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    .line 147
    const-string/jumbo v0, "showingLocaleRemoveDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mRemoveMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->setRemoveMode(Z)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mAdapter:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->restoreState(Landroid/os/Bundle;)V

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->mShowingRemoveDialog:Z

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->showRemoveLocaleWarningDialog()V

    .line 143
    :cond_1
    return-void
.end method
