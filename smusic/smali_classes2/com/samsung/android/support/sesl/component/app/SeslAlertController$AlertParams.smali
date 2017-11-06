.class public Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;
.super Ljava/lang/Object;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconId:I

    .line 843
    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconAttrId:I

    .line 866
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 870
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    .line 878
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 894
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 895
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCancelable:Z

    .line 896
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 897
    return-void
.end method

.method private createListView(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 957
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListLayout:I

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 960
    .local v6, "listView":Landroid/widget/ListView;
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 961
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 962
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1022
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1029
    :cond_0
    iput-object v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 1030
    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCheckedItem:I

    iput v1, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mCheckedItem:I

    .line 1032
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1033
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$3;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1056
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1057
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1060
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1061
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1065
    :cond_3
    :goto_2
    iput-object v6, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListView:Landroid/widget/ListView;

    .line 1066
    return-void

    .line 977
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1006
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    .line 1007
    iget v2, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mSingleChoiceItemLayout:I

    .line 1012
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 1013
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1009
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    iget v2, p1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->mListItemLayout:I

    .restart local v2    # "layout":I
    goto :goto_3

    .line 1015
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_8

    .line 1016
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1018
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_8
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$CheckedItemAdapter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1042
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1043
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams$4;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;Landroid/widget/ListView;Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1062
    :cond_a
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1063
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/samsung/android/support/sesl/component/app/SeslAlertController;

    .prologue
    const/4 v3, 0x0

    .line 900
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 901
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 916
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 920
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 924
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 928
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 933
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_6

    .line 934
    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->createListView(Lcom/samsung/android/support/sesl/component/app/SeslAlertController;)V

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 937
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 938
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setView(Landroid/view/View;IIII)V

    .line 954
    :cond_7
    :goto_1
    return-void

    .line 903
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 906
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 907
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 909
    :cond_a
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_b

    .line 910
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(I)V

    .line 912
    :cond_b
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_0

    .line 913
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setIcon(I)V

    goto :goto_0

    .line 941
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 943
    :cond_d
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_7

    .line 944
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslAlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertController;->setView(I)V

    goto :goto_1
.end method
