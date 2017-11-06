.class final Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
.source "SeslStandardMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I
    .param p6, "overflowOnly"    # Z

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;-><init>()V

    .line 60
    new-instance v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup$1;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 94
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mDropDownGravity:I

    .line 100
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 102
    iput-boolean p6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOverflowOnly:Z

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOverflowOnly:Z

    invoke-direct {v2, p2, v0, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    .line 105
    iput p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleAttr:I

    .line 106
    iput p5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleRes:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_config_prefDialogWidth:I

    .line 110
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupMaxWidth:I

    .line 112
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 114
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleRes:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    .line 117
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private tryShow()Z
    .locals 15

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 132
    const/4 v11, 0x1

    .line 206
    :goto_0
    return v11

    .line 135
    :cond_0
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mWasDismissed:Z

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v11, :cond_2

    .line 136
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 139
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 141
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 142
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setModal(Z)V

    .line 145
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 146
    .local v2, "anchor":Landroid/view/View;
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v11, :cond_8

    const/4 v1, 0x1

    .line 147
    .local v1, "addGlobalListener":Z
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 148
    if-eqz v1, :cond_3

    .line 149
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v11, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 151
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 152
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    iget v12, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mDropDownGravity:I

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setDropDownGravity(I)V

    .line 154
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mHasContentWidth:Z

    if-nez v11, :cond_4

    .line 155
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    iget v14, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupMaxWidth:I

    invoke-static {v11, v12, v13, v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v11

    iput v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContentWidth:I

    .line 156
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mHasContentWidth:Z

    .line 159
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    iget v12, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContentWidth:I

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setContentWidth(I)V

    .line 160
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setInputMethodMode(I)V

    .line 161
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 162
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    .line 164
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 165
    .local v5, "listView":Landroid/widget/ListView;
    invoke-virtual {v5, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 167
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShowTitle:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 168
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$layout;->sesl_popup_menu_header_item_layout:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 171
    .local v8, "titleItemView":Landroid/widget/FrameLayout;
    const v11, 0x1020016

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 172
    .local v9, "titleView":Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 173
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_5
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 176
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v8, v11, v12}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 181
    .end local v8    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v9    # "titleView":Landroid/widget/TextView;
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    invoke-virtual {v11, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 185
    .local v3, "configuration":Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->getField_semMobileKeyboardCovered(Landroid/content/res/Configuration;)I

    move-result v6

    .line 186
    .local v6, "mobileKeyboardCovered":I
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslConfigurationReflector;->getField_SEM_MOBILE_KEYBOARD_COVERED_YES(Landroid/content/res/Configuration;)I

    move-result v0

    .line 187
    .local v0, "MOBILE_KEYBOARD_COVERED_YES":I
    if-ne v6, v0, :cond_9

    const/4 v7, 0x1

    .line 189
    .local v7, "mobileKeyboardMode":Z
    :goto_2
    const/4 v4, 0x0

    .line 190
    .local v4, "itemMaxCount":I
    const/4 v10, 0x0

    .line 191
    .local v10, "visibledMaxHeight":I
    if-eqz v7, :cond_a

    .line 192
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$integer;->sesl_menu_popup_max_item_count_mobile_keyboard:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 193
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$dimen;->sesl_menu_popup_max_height_mobile_keyboard:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 199
    :goto_3
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getCount()I

    move-result v11

    if-le v11, v4, :cond_7

    .line 200
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setHeight(I)V

    .line 204
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    .line 206
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 146
    .end local v0    # "MOBILE_KEYBOARD_COVERED_YES":I
    .end local v1    # "addGlobalListener":Z
    .end local v3    # "configuration":Landroid/content/res/Configuration;
    .end local v4    # "itemMaxCount":I
    .end local v5    # "listView":Landroid/widget/ListView;
    .end local v6    # "mobileKeyboardCovered":I
    .end local v7    # "mobileKeyboardMode":Z
    .end local v10    # "visibledMaxHeight":I
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v0    # "MOBILE_KEYBOARD_COVERED_YES":I
    .restart local v1    # "addGlobalListener":Z
    .restart local v3    # "configuration":Landroid/content/res/Configuration;
    .restart local v5    # "listView":Landroid/widget/ListView;
    .restart local v6    # "mobileKeyboardCovered":I
    :cond_9
    const/4 v7, 0x0

    goto :goto_2

    .line 195
    .restart local v4    # "itemMaxCount":I
    .restart local v7    # "mobileKeyboardMode":Z
    .restart local v10    # "visibledMaxHeight":I
    :cond_a
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$integer;->sesl_menu_popup_max_item_count:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 196
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/samsung/android/support/sesl/R$dimen;->sesl_menu_popup_max_height:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_3
.end method


# virtual methods
.method public addMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 226
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->dismiss()V

    .line 221
    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eq p1, v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->dismiss()V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mWasDismissed:Z

    .line 236
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close()V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 246
    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->dismiss()V

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 313
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 10
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    const/4 v9, 0x0

    .line 264
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOverflowOnly:Z

    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleAttr:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopupStyleRes:I

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;ZII)V

    .line 267
    .local v0, "subPopup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setPresenterCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 268
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->shouldPreserveIconSpacing(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setForceShowIcon(Z)V

    .line 271
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 275
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1, v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getHorizontalOffset()I

    move-result v7

    .line 279
    .local v7, "horizontalOffset":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getVerticalOffset()I

    move-result v8

    .line 280
    .local v8, "verticalOffset":I
    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->tryShow(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v1, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    .line 284
    :cond_0
    const/4 v1, 0x1

    .line 287
    .end local v0    # "subPopup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
    .end local v7    # "horizontalOffset":I
    .end local v8    # "verticalOffset":I
    :goto_0
    return v1

    :cond_1
    move v1, v9

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 318
    return-void
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 260
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1
    .param p1, "forceShow"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->setForceShowIcon(Z)V

    .line 123
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mDropDownGravity:I

    .line 128
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setHorizontalOffset(I)V

    .line 343
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 332
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mShowTitle:Z

    .line 353
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setVerticalOffset(I)V

    .line 348
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SeslStandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mHasContentWidth:Z

    .line 252
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslStandardMenuPopup;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    return-void
.end method
