.class public Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;,
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;
    }
.end annotation


# static fields
.field private static FACE_WIDGET_SCREEN:I


# instance fields
.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private imgView:Landroid/widget/ImageView;

.field private mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mReorderMode:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;Z)V
    .locals 0
    .param p1, "reorderMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 266
    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    .line 292
    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 28
    return-void
.end method

.method private addFaceList(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 77
    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->addItem(Ljava/lang/String;ZLjava/lang/String;)V

    .line 76
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 149
    const v0, 0x7f1103ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 155
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f020380

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    .line 147
    return-void
.end method

.method private setReorderMode(Z)V
    .locals 2
    .param p1, "reorderMode"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setReorderMode(Z)V

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateViewConfiguration()V

    .line 227
    return-void
.end method

.method private updateViewConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    .line 236
    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    .line 235
    return-void

    .line 237
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 213
    .local v0, "menuItemRemove":Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 214
    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v3, :cond_1

    move v1, v2

    .line 216
    .local v1, "visible":Z
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 215
    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 217
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 220
    .end local v1    # "visible":Z
    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v2, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0a51

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 207
    :goto_0
    return-void

    .line 223
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0a48

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0214

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->FACE_WIDGET_SCREEN:I

    .line 263
    sget v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->FACE_WIDGET_SCREEN:I

    return v0
.end method

.method public onBackKey()V
    .locals 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    .line 83
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setHasOptionsMenu(Z)V

    .line 57
    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "order":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    const-string/jumbo v6, "servicebox_music;servicebox_calendar;servicebox_alarm"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "faceWidgetOrder":Ljava/lang/String;
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "faceInfo":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 69
    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->addFaceList(Ljava/lang/String;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    :cond_2
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 52
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 180
    const/4 v1, 0x1

    const v2, 0x7f0b0a51

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 181
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 182
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 183
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    .line 178
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 109
    iput-object v7, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    .local v4, "result":Landroid/view/View;
    move-object v5, v4

    .line 111
    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f040104

    invoke-virtual {p1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "myLayout":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->configureDragAndDrop(Landroid/view/View;)V

    .line 114
    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 115
    .local v2, "mInflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040025

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "guideView":Landroid/view/View;
    const v5, 0x7f110126

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.app.aodservice"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 121
    .local v1, "isSupportAOD":Z
    if-eqz v1, :cond_1

    .line 122
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    const v6, 0x7f0204ad

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 131
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 132
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 133
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 135
    const v5, 0x7f110127

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->textView:Landroid/widget/TextView;

    .line 136
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->textView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 137
    if-eqz v1, :cond_3

    .line 138
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->textView:Landroid/widget/TextView;

    const v6, 0x7f0b0a4a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 144
    :cond_0
    :goto_1
    return-object v4

    .line 124
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    const v6, 0x7f0204af

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    const v6, 0x7f0204ae

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->textView:Landroid/widget/TextView;

    const v6, 0x7f0b0a4c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 255
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 191
    :sswitch_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 193
    .local v0, "returnVal":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 194
    return v3

    .line 197
    .end local v0    # "returnVal":I
    :sswitch_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    .line 199
    return v3

    .line 189
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 246
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 247
    const-string/jumbo v0, "AdditionalInformationSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FaceWidgets"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 163
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->finishFragment()V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyBackPressedListener(Lcom/android/settings/SettingsActivity$onKeyBackPressedListener;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v0, "reorderMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string/jumbo v0, "reorderMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    .line 93
    return-void
.end method
