.class public Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;
.super Landroid/widget/Spinner;
.source "SeslCompatSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;,
        Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final ATTRS_ANDROID_SPINNERMODE:[I

.field static final IS_AT_LEAST_M:Z

.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field private static final MODE_DIALOG:I = 0x0

.field private static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeslCompatSpinner"


# instance fields
.field mDropDownWidth:I

.field private mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

.field mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupSet:Z

.field private mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->IS_AT_LEAST_M:Z

    .line 71
    new-array v0, v1, [I

    const v1, 0x10102f1

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 122
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 133
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 148
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I

    .prologue
    .line 167
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "mode"    # I
    .param p5, "popupTheme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 196
    invoke-direct/range {p0 .. p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 198
    sget-object v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 201
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/core/widget/SeslSpinnerReflector;->getField_mPopup(Landroid/widget/Spinner;)Landroid/widget/ListPopupWindow;

    move-result-object v12

    .line 202
    .local v12, "spinnerPopup":Landroid/widget/ListPopupWindow;
    if-eqz v12, :cond_0

    .line 203
    invoke-static {v12}, Lcom/samsung/android/support/sesl/core/widget/SeslListPopupWindowReflector;->getField_mPopup(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v11

    .line 204
    .local v11, "popupWindow":Landroid/widget/PopupWindow;
    sget v13, Lcom/samsung/android/support/sesl/R$style;->Animation_SeslCompat_MenuPopup:I

    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 205
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_0

    .line 206
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 207
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 211
    .end local v11    # "popupWindow":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p5, :cond_6

    .line 212
    new-instance v13, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v13, v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 224
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-eqz v13, :cond_3

    .line 225
    const/4 v13, -0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_2

    .line 227
    const/4 v4, 0x0

    .line 229
    .local v4, "aa":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v13, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->ATTRS_ANDROID_SPINNERMODE:[I

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 231
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 232
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result p4

    .line 237
    :cond_1
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    .end local v4    # "aa":Landroid/content/res/TypedArray;
    :cond_2
    :goto_1
    const/4 v13, 0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    .line 244
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v9, v0, v13, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    .local v9, "popup":Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    sget-object v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner:[I

    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v14, v1, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 247
    .local v8, "pa":Landroid/content/res/TypedArray;
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner_android_dropDownWidth:I

    const/4 v14, -0x2

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    .line 249
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner_android_popupBackground:I

    .line 250
    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 249
    invoke-virtual {v9, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner_android_prompt:I

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    .line 255
    new-instance v13, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .line 272
    .end local v8    # "pa":Landroid/content/res/TypedArray;
    .end local v9    # "popup":Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;
    :cond_3
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner_android_entries:I

    invoke-virtual {v3, v13}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 273
    .local v7, "entries":[Ljava/lang/CharSequence;
    if-eqz v7, :cond_4

    .line 274
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v13, 0x1090008

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v13, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 276
    .local v5, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    sget v13, Lcom/samsung/android/support/sesl/R$layout;->support_simple_spinner_dropdown_item:I

    invoke-virtual {v5, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 277
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 280
    .end local v5    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_4
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupSet:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v13, :cond_5

    .line 287
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 288
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 292
    :cond_5
    new-instance v13, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/samsung/android/support/sesl/R$drawable;->sesl_spinner_show_button_background:I

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v16

    .line 292
    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14, v15}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 294
    return-void

    .line 214
    .end local v7    # "entries":[Ljava/lang/CharSequence;
    :cond_6
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslSpinner_android_popupTheme:I

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 215
    .local v10, "popupThemeResId":I
    if-eqz v10, :cond_7

    .line 216
    new-instance v13, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v10}, Lcom/samsung/android/support/sesl/component/view/SeslContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 220
    :cond_7
    sget-boolean v13, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->IS_AT_LEAST_M:Z

    if-nez v13, :cond_8

    move-object/from16 v13, p1

    :goto_2
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto :goto_2

    .line 234
    .end local v10    # "popupThemeResId":I
    .restart local v4    # "aa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v6

    .line 235
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v13, "SeslCompatSpinner"

    const-string v14, "Could not read android:spinnerMode"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    .line 237
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-eqz v4, :cond_9

    .line 238
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :cond_9
    throw v13
.end method


# virtual methods
.method compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 470
    if-nez p1, :cond_1

    .line 471
    const/4 v8, 0x0

    .line 510
    :cond_0
    :goto_0
    return v8

    .line 474
    :cond_1
    const/4 v8, 0x0

    .line 475
    .local v8, "width":I
    const/4 v5, 0x0

    .line 476
    .local v5, "itemView":Landroid/view/View;
    const/4 v4, 0x0

    .line 478
    .local v4, "itemType":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getMeasuredWidth()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 480
    .local v9, "widthMeasureSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 484
    .local v2, "heightMeasureSpec":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 485
    .local v7, "start":I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 486
    .local v1, "end":I
    sub-int v0, v1, v7

    .line 487
    .local v0, "count":I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 488
    move v3, v7

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 489
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 490
    .local v6, "positionType":I
    if-eq v6, v4, :cond_2

    .line 491
    move v4, v6

    .line 492
    const/4 v5, 0x0

    .line 494
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 495
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 496
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 501
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 505
    .end local v6    # "positionType":I
    :cond_4
    if-eqz p2, :cond_0

    .line 506
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 507
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getHorizontalOffset()I

    move-result v0

    .line 362
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getVerticalOffset()I

    move-result v0

    .line 340
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    goto :goto_0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 376
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    .line 378
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPopupContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    .line 305
    :goto_0
    return-object v0

    .line 302
    :cond_0
    sget-boolean v0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->IS_AT_LEAST_M:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->dismiss()V

    .line 406
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 418
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 420
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getMeasuredWidth()I

    move-result v0

    .line 423
    .local v0, "measuredWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 424
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 422
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getMeasuredHeight()I

    move-result v2

    .line 422
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setMeasuredDimension(II)V

    .line 428
    .end local v0    # "measuredWidth":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 431
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->show()V

    .line 448
    :cond_0
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 386
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupSet:Z

    if-nez v1, :cond_1

    .line 387
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 393
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    .local v0, "popupContext":Landroid/content/Context;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropDownAdapter;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 394
    .end local v0    # "popupContext":Landroid/content/Context;
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopupContext:Landroid/content/Context;

    goto :goto_1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->setBackgroundOff(Landroid/graphics/drawable/Drawable;)V

    .line 439
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setVerticalOffset(I)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    goto :goto_0
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "pixels"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 368
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mDropDownWidth:I

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    goto :goto_0
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPopupBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner;->mPopup:Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslCompatSpinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
